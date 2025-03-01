class Quote {
  final String text;
  final String author;
  final String category;
  final String details;
  final String imageUrl;

  Quote({
    required this.text,
    required this.author,
    required this.category,
    required this.details,
    required this.imageUrl,
  });
}

List<Quote> quotes = [
  // Motivational Quotes
  Quote(
    text: "The only limit to our realization of tomorrow is our doubts of today.",
    author: "Franklin D. Roosevelt",
    category: "Motivational",
    details: "FDR was the 32nd President of the U.S. and led during the Great Depression.",
    imageUrl: "assets/images/author1.jpeg",
  ),
  Quote(
    text: "Believe you can and you're halfway there.",
    author: "Theodore Roosevelt",
    category: "Motivational",
    details: "Theodore Roosevelt was the 26th President of the United States.",
    imageUrl: "assets/images/author2.jpeg",
  ),
  Quote(
    text: "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    author: "Winston Churchill",
    category: "Motivational",
    details: "Winston Churchill was the British Prime Minister during WWII.",
    imageUrl: "assets/images/author3.jpeg",
  ),

  // Inspirational Quotes
  Quote(
    text: "In the middle of every difficulty lies opportunity.",
    author: "Albert Einstein",
    category: "Inspirational",
    details: "Einstein was a theoretical physicist known for the theory of relativity.",
    imageUrl: "assets/images/author4.jpeg",
  ),
  Quote(
    text: "Act as if what you do makes a difference. It does.",
    author: "William James",
    category: "Inspirational",
    details: "William James was an American philosopher and psychologist.",
    imageUrl: "assets/images/author5.jpeg",
  ),
  Quote(
    text: "It always seems impossible until it’s done.",
    author: "Nelson Mandela",
    category: "Inspirational",
    details: "Mandela was a South African leader and Nobel Prize winner.",
    imageUrl: "assets/images/author6.jpeg",
  ),

  // Love Quotes
  Quote(
    text: "The best thing to hold onto in life is each other.",
    author: "Audrey Hepburn",
    category: "Love",
    details: "Audrey Hepburn was a British actress and humanitarian.",
    imageUrl: "assets/images/author7.jpeg",
  ),
  Quote(
    text: "You know you're in love when you can't fall asleep because reality is finally better than your dreams.",
    author: "Dr. Seuss",
    category: "Love",
    details: "Dr. Seuss was an American author known for his children's books.",
    imageUrl: "assets/images/author8.jpeg",
  ),
  Quote(
    text: "To love and be loved is to feel the sun from both sides.",
    author: "David Viscott",
    category: "Love",
    details: "David Viscott was an American psychiatrist and author.",
    imageUrl: "assets/images/author9.jpeg",
  ),

  // History Quotes
  Quote(
    text: "Those who do not remember the past are condemned to repeat it.",
    author: "George Santayana",
    category: "History",
    details: "George Santayana was a Spanish philosopher and writer.",
    imageUrl: "assets/images/author10.jpeg",
  ),
  Quote(
    text: "History will be kind to me for I intend to write it.",
    author: "Winston Churchill",
    category: "History",
    details: "Churchill was the British Prime Minister during WWII.",
    imageUrl: "assets/images/author3.jpeg",
  ),
  Quote(
    text: "The farther backward you can look, the farther forward you are likely to see.",
    author: "Winston Churchill",
    category: "History",
    details: "Winston Churchill was the British Prime Minister during WWII.",
    imageUrl: "assets/images/author3.jpeg",
  ),
];
