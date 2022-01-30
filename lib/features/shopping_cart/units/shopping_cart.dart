part of '../view.dart';

class _ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String item = '';
    int counter = 1;
    var sizedBox = SizedBox(width: 10);
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => Dismissible(
        key: Key(item),
        background: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '    Remove',
            style: fieldTextStyle(kRedClr),
          ),
        ),
        child: Padding(
          padding: kPadding1(15, 0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: kPadding1(10, 5),
                  padding: kPadding10,
                  decoration: BoxDecoration(
                    borderRadius: circularRadius10,
                    border: Border.all(color: kGreyClr),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/iphone.png',
                        fit: BoxFit.fill,
                        height: 94,
                      ),
                      sizedBox,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Iphone max',
                            style: fieldTextStyle(kDarkClr),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'USD 999',
                            style: textStyle14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CounterButton(
                    icon: Icons.add,
                    onTap: () {},
                  ),
                  Container(
                    padding: kPadding1(5, 5),
                    margin: kPadding1(0, 10),
                    color: kBabyBlueClr,
                    child: Text(
                      'x' + counter.toString(),
                    ),
                  ),
                  CounterButton(
                    icon: Icons.remove,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterButton extends StatelessWidget {
  const CounterButton({
    this.icon,
    this.onTap,
  });
  final IconData? icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: kGreyClr),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: kGreyClr,
        ),
      ),
    );
  }
}
