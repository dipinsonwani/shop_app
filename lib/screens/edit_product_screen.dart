import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';
import '../providers/products.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = '/edit-product';
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _imgUrlController = TextEditingController();
  final _imgUrlFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();
  var _editedProduct =
      Product(description: '', id: null, imageUrl: '', price: null, title: '');
  var _isInit = true;
  var _initValues = {
    'title': '',
    'price': '',
    'description': '',
    'imageUrl': ''
  };

  @override
  void didChangeDependencies() {
    print('didchangeDependencies');

    final productId = ModalRoute.of(context).settings.arguments as String;
    if (productId != null) {
      _editedProduct = Provider.of<Products>(context, listen: false)
          .items
          .firstWhere((product) => product.id == productId);
      _initValues = {
        'title': _editedProduct.title,
        'price': _editedProduct.price.toString(),
        'description': _editedProduct.description,
        'imageUrl': ''
      };
      _imgUrlController.text = _editedProduct.imageUrl;
    }

    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  void initState() {
    //add listener to preview image when it loses it focus
    _imgUrlFocusNode.addListener(_updateImgUrl);
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    _imgUrlFocusNode.removeListener(_updateImgUrl);
    _imgUrlController.dispose();
    _imgUrlFocusNode.dispose();
    super.dispose();
    print('dispose');
  }

  void _updateImgUrl() {
    if (!_imgUrlFocusNode.hasFocus) {
      setState(() {});
    }
  }

  void saveform() {
    //validator property wont work until validate() is triggered or autoValidateMode is set to true
    final isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    }
    _form.currentState.save();
    //adding the product only when clicked on add and update if clicked on edit
    if(_editedProduct.id!=null){
    Provider.of<Products>(context,listen:false).updateProduct(_editedProduct.id, _editedProduct);
    }else{
    Provider.of<Products>(context, listen: false).addProduct(_editedProduct);
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit product'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: saveform,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          //autovalidateMode: AutovalidateMode.always,
          key: _form,
          child: ListView(
            children: <Widget>[
              TextFormField(
                initialValue: _initValues['title'],
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Provide a value';
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                    description: _editedProduct.description,
                    id: _editedProduct.id,
                    imageUrl: _editedProduct.imageUrl,
                    price: _editedProduct.price,
                    title: value,
                  );
                },
              ),
              TextFormField(
                initialValue: _initValues['price'],
                decoration: InputDecoration(
                  labelText: 'Price',
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Provide a value.';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please Enter a valid number.';
                  }
                  if (double.parse(value) <= 0) {
                    return 'Please Provide a number greater than zero.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                    description: _editedProduct.description,
                    id: _editedProduct.id,
                    imageUrl: _editedProduct.imageUrl,
                    price: double.parse(value),
                    title: _editedProduct.title,
                  );
                },
              ),
              TextFormField(
                initialValue: _initValues['description'],
                decoration: InputDecoration(
                  labelText: 'Description',
                ),
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Provide a Description';
                  }
                  if (value.length < 10) {
                    return 'Should be atlease 10 character long.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                    description: value,
                    id: _editedProduct.id,
                    imageUrl: _editedProduct.imageUrl,
                    price: _editedProduct.price,
                    title: _editedProduct.title,
                  );
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 10, right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                    child: _imgUrlController.text.isEmpty
                        ? Text('Enter a URL')
                        : FittedBox(
                            child: Image.network(_imgUrlController.text),
                            fit: BoxFit.fill,
                          ),
                  ),
                  //used Expanded because TextFormField has an unconstraint width and gives render error
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'ImageUrl',
                      ),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: _imgUrlController,
                      focusNode: _imgUrlFocusNode,
                      onEditingComplete: () {
                        setState(() {});
                      },
                      onFieldSubmitted: (_) {
                        saveform();
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter an image URL';
                        }
                        if (!value.startsWith('http') &&
                            !value.startsWith('https')) {
                          return 'Please Provide a valid URL';
                        }
                        if (!value.endsWith('.png') &&
                            !value.endsWith('.jpg') &&
                            !value.endsWith('.jpeg')) {
                          return 'Please Provide a valid Image URL';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _editedProduct = Product(
                          description: _editedProduct.description,
                          id: _editedProduct.id,
                          imageUrl: value,
                          price: _editedProduct.price,
                          title: _editedProduct.title,
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
