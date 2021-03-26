def portfolio_input():
    """Get user input for the desired portfolio size"""
    global portfolio_size
    portfolio_size = input('Enter the size of your portfolio:')

    try:
        float(portfolio_size)
    except ValueError:
        print('Invalid value entered, only use numbers')
        portfolio_input()

    return float(portfolio_size)
