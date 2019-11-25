/*
 * main.cc
 *
 *  Created on: Jan 23, 2012
 *      Author: cferenba
 *
 * Copyright (c) 2012, Triad National Security, LLC.
 * All rights reserved.
 * Use of this source code is governed by a BSD-style open-source
 * license; see top-level LICENSE file for full license text.
 */

#include <cstdlib>
#include <string>
#include <iostream>
#include <omp.h>
#include <stdio.h>

#include "Parallel.hh"
#include "InputFile.hh"
#include "Driver.hh"

using namespace std;


int main(const int argc, const char** argv)
{
    double time1 = omp_get_wtime();
    Parallel::init();

    if (argc != 2) {
        if (Parallel::mype == 0)
            cerr << "Usage: pennant <filename>" << endl;
        exit(1);
    }

    const char* filename = argv[1];
    InputFile inp(filename);

    string probname(filename);
    // strip .pnt suffix from filename
    int len = probname.length();
    if (probname.substr(len - 4, 4) == ".pnt")
        probname = probname.substr(0, len - 4);

    Driver drv(&inp, probname);

    drv.run();

    Parallel::final();
    //clock_t time2 = clock();
    //double time_spent = (double)(time2 - time1) / CLOCKS_PER_SEC;
    printf("Elapsed time: %0.2lf\n", omp_get_wtime() - time1);
    return 0;

}



