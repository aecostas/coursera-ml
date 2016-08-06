## Octave problems
Problem

	octave:21> plot(X, y, 'rx', 'MarkerSize', 10);

	gnuplot> set terminal aqua enhanced title "Figure 1"  	font "*,6" dashlength 1
                      ^
         line 0: unknown or ambiguous terminal type; 	type just 'set terminal' for a list

	WARNING: Plotting with an 'unknown' terminal.
	No output will be generated. Please select a 	terminal with 'set terminal'.

Solution

	setenv("GNUTERM","X11")