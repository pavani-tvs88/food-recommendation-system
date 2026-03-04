.PHONY: help install setup clean run-interactive run-chatbot run-calorie run-advanced run-comparison test lint format check venv

# Variables
PYTHON := python3
PIP := pip3
VENV := venv

help:
	@echo "Food Recommendation System - Available Commands"
	@echo "================================================"
	@echo "make install          - Install project dependencies"
	@echo "make setup            - Create virtual environment and install dependencies"
	@echo "make clean            - Remove cache, .pyc files, and __pycache__ directories"
	@echo "make run-interactive  - Run the interactive food search system"
	@echo "make run-chatbot      - Run the RAG-powered chatbot"
	@echo "make run-calorie      - Run the calorie checker"
	@echo "make run-advanced     - Run advanced search features"
	@echo "make run-comparison   - Run system comparison utility"
	@echo "make check            - Check code with linting tools"
	@echo "make format           - Format code with black (if available)"
	@echo "make venv             - Create virtual environment"
	@echo "make help             - Show this help message"

# Virtual environment
venv:
	$(PYTHON) -m venv $(VENV)
	@echo "Virtual environment created. Run: source $(VENV)/bin/activate"

# Install dependencies
install:
	$(PIP) install -r requirements.txt
	@echo "Dependencies installed successfully"

# Setup (create venv and install)
setup: venv install
	@echo "Setup complete! Run: source $(VENV)/bin/activate"

# Clean
clean:
	rm -rf __pycache__ .pytest_cache .coverage htmlcov
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	find . -type f -name ".DS_Store" -delete
	@echo "Cleaned up cache files"

# Run interactive search
run-interactive:
	$(PYTHON) interactive_search.py

# Run chatbot
run-chatbot:
	$(PYTHON) enhanced_rag_chatbot.py

# Run calorie checker
run-calorie:
	$(PYTHON) calorie_checker.py

# Run advanced search
run-advanced:
	$(PYTHON) advanced_search.py

# Run comparison
run-comparison:
	$(PYTHON) system_comparison.py

# Linting check
check:
	@command -v pylint >/dev/null 2>&1 && pylint *.py || echo "pylint not installed, skipping linting"
	@command -v flake8 >/dev/null 2>&1 && flake8 *.py || echo "flake8 not installed, skipping flake8"

# Format code
format:
	@command -v black >/dev/null 2>&1 && black *.py || echo "black not installed, skipping formatting"

# Default target
.DEFAULT_GOAL := help
