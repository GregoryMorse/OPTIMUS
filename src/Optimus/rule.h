# ifndef __RULE__H
# include "symbol.h"
# include "doublestack.h"
# include <vector>
# define REDO_MAX	5
using namespace std;

/**
 * @brief The Rule class implements a rule to be used in the
 * Grammatical Evolution procedure.
 */
class Rule
{
	private:
		vector<Symbol*> data;	
		int	length;
	public:
		Rule();
		void	addSymbol(Symbol *s);
		int	getSymbolPos(string s);
		Symbol	*getSymbol(int pos) const;
		void	setSymbol(int pos,Symbol *s);
		int	getLength() const;
		string	printRule(vector<int> genome,int &pos,int &redo);
		double	getValue(vector<int> genome,int &pos,int &redo,DoubleStack &stack,double *X);
		~Rule();
};
# define __RULE__H
# endif
