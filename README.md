# food-recommendation-system

## Project Structure

```
food-recommendation-system/
├── interactive_search.py          # CLI interface for interactive food search
├── enhanced_rag_chatbot.py        # RAG chatbot with IBM Watsonx.ai integration
├── calorie_checker.py             # Calorie-based food recommendations
├── advanced_search.py             # Advanced filtering and search features
├── system_comparison.py           # Comparison utility for different search methods
├── result_limiter.py              # Result filtering and limiting utilities
├── shared_functions.py            # Shared utility functions for all modules
├── FoodDataSet.json               # Food dataset with nutritional information
├── requirements.txt               # Python dependencies
└── README.md                      # This file
```

## Installation

1. Clone the repository:
```bash
git clone https://github.com/pavani-tvs88/food-recommendation-system.git
cd food-recommendation-system
```

2. Create and activate a virtual environment (recommended):
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

## Configuration

For RAG chatbot functionality using IBM Watsonx.ai:

1. Update `enhanced_rag_chatbot.py` with your credentials:
   - Set your IBM Watsonx.ai URL in the `my_credentials` dictionary
   - Set your `project_id` or `space_id` for your IBM environment

## Usage

### Running the Interactive Search System
```bash
python interactive_search.py
```
This launches an interactive CLI where you can:
- Search for foods by name, cuisine, or ingredients
- Filter by calorie range
- Get real-time similarity search results

### Running the RAG Chatbot
```bash
python enhanced_rag_chatbot.py
```
Interact with an AI-powered chatbot that:
- Understands natural language food queries
- Provides personalized recommendations
- Uses RAG (Retrieval-Augmented Generation) for accurate responses

### Checking Calorie Information
```bash
python calorie_checker.py
```

### Advanced Search Features
```bash
python advanced_search.py
```

### Comparing Search Methods
```bash
python system_comparison.py
```

## Key Features

- **Vector Database Integration**: Uses Chroma DB for efficient similarity search
- **Advanced Filtering**: Filter foods by cuisine type, calorie range, ingredients, and taste profiles
- **RAG Chatbot**: Combines vector search with LLM for intelligent food recommendations
- **Interactive CLI**: User-friendly command-line interface for real-time interaction
- **Rich Dataset**: Comprehensive food dataset with nutritional information and metadata
- **Multi-Method Comparison**: Compare traditional search with AI-enhanced recommendations

## Dependencies

- `numpy`: Numerical computing
- `scipy`: Scientific computing
- `chromadb`: Vector database for similarity search
- `sentence-transformers`: Text embedding generation
- `ibm-watsonx-ai`: IBM Watsonx.ai LLM integration

## Contributing

Contributions are welcome! Please feel free to submit a pull request.

## License

This project is open source and available under the MIT License.