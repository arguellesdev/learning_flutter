void main(){
  const addBlue = true;
  const addRed = true;
  const extraColors = ['pink', 'green'];
  final colors = [
    'grey',
    'brown',
    if (addBlue)
      'blue',
    if (addRed)
      'red',
    ...extraColors,
  ];
  // colors.addAll(extraColors);
  print (colors);

}