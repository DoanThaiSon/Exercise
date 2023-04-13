
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  bool _isHidden = true;
  bool _showFullCardNumber= false;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
      _showFullCardNumber = !_showFullCardNumber;
    });
  }
  final List<Map<String, dynamic>> _cardList = [];
  String? fullName;
  int? cardId;
  final TextEditingController _cardTextController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  Widget _renderCardNumber(int? cardId) {
    if (cardId == null) return Container();

    final String cardNumber = cardId.toString();
    final String firstTwoDigits = cardNumber.length > 1 ? cardNumber.substring(0, 2) : cardNumber;
    final String lastDigit = cardNumber.length > 1 ? cardNumber.substring(cardNumber.length - 1) : '';

    String hiddenDigits = '';
    if (!_showFullCardNumber) {
      for (int i = 2; i < cardNumber.length - 1; i++) {
        hiddenDigits += '*';
      }
    }

    return Positioned(
      bottom: 40,
      left: 20,
      child: Text(
        _showFullCardNumber ? cardNumber : '$firstTwoDigits$hiddenDigits$lastDigit',
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }


  Widget _renderCard(String? fullName, int? cardId) {
    return Stack(
      children: [
        Image.asset('assets/images/card.png'),
        Positioned(
          bottom: 20,
          left: 20,
          child: Text(
            fullName ?? "",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),

        _renderCardNumber(cardId)
      ],
    );
  }

  Widget _renderTextField() {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (value) {
            setState(() {
              cardId = int.tryParse(value);
            });
          },
          controller: _cardTextController,
          decoration: const InputDecoration(label: Text('Card No')),
        ),
        TextField(
          onChanged: (value) {
            setState(() {
              fullName = value;
            });
          },
          controller: _userNameController,
          decoration: const InputDecoration(label: Text('Full Name')),
        ),
      ],
    );
  }

  Widget _renderButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _cardList.add({
              'fullName': fullName,
              'cardId': cardId,
            });
            _cardTextController.clear();
            _userNameController.clear();
            fullName = null;
            cardId = null;
          });
        },
        child: const Text('Add'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card List'),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _renderCard(fullName, cardId),
              _renderTextField(),
              const SizedBox(
                height: 20,
              ),
              _renderButton(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Card List of\ntechmaster',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              ..._cardList.map((card) {
                return Stack(
                  children: [
                    Column(
                      children: [
                        _renderCard(
                          card['fullName'],
                          card['cardId'],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                    Positioned(
                      top:10,
                      right: 20,
                      child: InkWell(
                        onTap: _toggleVisibility,
                        child: Icon(
                          _isHidden ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey,size: 50,
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}

