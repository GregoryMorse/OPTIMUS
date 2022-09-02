# ifndef __GRS__H
# define __GRS__H

# include <rlsprogram.h>
# include <grspopulation.h>
# include <collection.h>


class Grs
{
	private:
		int maxGenerations;
		Problem *problem;
		RlsProgram *program;
		GrsPopulation *pop;
	public:
		Grs(Problem *p);
		int	getGenomeCount() const;
		int	getGenomeLength() const;
		int	getMaxGenerations() const;
		void	setGenomeCount(int c);
		void	setGenomeLength(int l);
		void	setMaxGenerations(int g);
		double	getSelectionRate() const;
		double	getMutationRate() const;
		void	setSelectionRate(double s);
		void	setMutationRate(double m);
		int	getFunctionEvaluations();
		int	getGradientEvaluations();
		void	Solve(Data &x,double &y);
		double	getMinimum() const;
		~Grs();
};
# endif
