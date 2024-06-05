enum Gender{
  HOMEM(value: 'Homem'),
  MULHER(value: 'Mulher'),
  OUTROS(value: 'Outros');
  
  const Gender({required this.value});

  final String value;
}