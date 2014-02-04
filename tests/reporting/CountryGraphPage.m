function rep = CountryGraphPage(rep, countryAbbr, db_q, dc_q, prange, srange)
% Copyright (C) 2013 Dynare Team
%
% This file is part of Dynare.
%
% Dynare is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% Dynare is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with Dynare.  If not, see <http://www.gnu.org/licenses/>.

rep = rep.addGraph('title', 'Interest Rate', ...
                   'xrange', prange, ...
                   'shade', srange, ...
                   'showZeroline', true);
rep = rep.addSeries('data', db_q{['RS_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineStyle', 'dashed', ...
                    'graphLineWidth', 1.5);
rep = rep.addSeries('data', dc_q{['RS_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineWidth', 1.5);

rep = rep.addGraph('title', 'Output Gap', ...
                   'xrange', prange, ...
                   'shade', srange, ...
                   'showZeroline', true);
rep = rep.addSeries('data', db_q{['Y_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineStyle', 'dashed', ...
                    'graphLineWidth', 1.5);
rep = rep.addSeries('data', dc_q{['Y_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineWidth', 1.5);

rep = rep.addGraph('title', 'Headline Inflation (y/y)', ...
                   'xrange', prange, ...
                   'shade', srange, ...
                   'showZeroline', true);
rep = rep.addSeries('data', db_q{['PCH_PIE4_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineStyle', 'dashed', ...
                    'graphLineWidth', 1.5);
rep = rep.addSeries('data', dc_q{['PCH_PIE4_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineWidth', 1.5);

rep = rep.addGraph('title', 'Headline Inflation (q/q)', ...
                   'xrange', prange, ...
                   'shade', srange, ...
                   'showZeroline', true);
rep = rep.addSeries('data', db_q{['PCH_PIE_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineStyle', 'dashed', ...
                    'graphLineWidth', 1.5);
rep = rep.addSeries('data', dc_q{['PCH_PIE_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineWidth', 1.5);

rep = rep.addGraph('title', 'GDP Growth (q/q)', ...
                   'xrange', prange, ...
                   'shade', srange, ...
                   'showZeroline', true);
rep = rep.addSeries('data', db_q{['PCH_GROWTH_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineStyle', 'dashed', ...
                    'graphLineWidth', 1.5);
rep = rep.addSeries('data', dc_q{['PCH_GROWTH_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineWidth', 1.5);

rep = rep.addGraph('title', 'Core Inflation (y/y)', ...
                   'xrange', prange, ...
                   'shade', srange, ...
                   'showZeroline', true);
rep = rep.addSeries('data', db_q{['PCH_PIEX4_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineStyle', 'dashed', ...
                    'graphLineWidth', 1.5);
rep = rep.addSeries('data', dc_q{['PCH_PIEX4_' countryAbbr]}, ...
                    'graphLineColor', 'blue', ...
                    'graphLineWidth', 1.5);
end