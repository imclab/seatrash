/**
	@file
	simplecplusplus - a max object shell
	jeremy bernstein - jeremy@bootsquad.com	

	@ingroup	examples	
*/

#include "ext.h"							// standard Max include, always required
#include "ext_obex.h"						// required for new style Max object

////////////////////////// object struct
typedef struct _simplecplusplus 
{
	t_object					ob;			// the object itself (must be first)
	long						int_a;
	long						int_b;
	void						*iout;
	void						*fout;
	void						*bout;
} t_simplecplusplus;

///////////////////////// function prototypes
//// standard set
void *simplecplusplus_new(t_symbol *s, long argc, t_atom *argv);
void simplecplusplus_free(t_simplecplusplus *x);
void simplecplusplus_assist(t_simplecplusplus *x, void *b, long m, long a, char *s);
void simplecplusplus_foo(t_simplecplusplus *x);
void simplecplusplus_int(t_simplecplusplus *x, long i);
void simplecplusplus_bang(t_simplecplusplus *x);

void simplecplusplus_in1(t_simplecplusplus *x, long i);
void simplecplusplus_ft2(t_simplecplusplus *x, double f);
void simplecplusplus_in3(t_simplecplusplus *x, long i);
//////////////////////// global class pointer variable
void *simplecplusplus_class;


int main(void)
{	
	// object initialization, OLD STYLE
	// setup((t_messlist **)&simplecplusplus_class, (method)simplecplusplus_new, (method)simplecplusplus_free, (short)sizeof(t_simplecplusplus), 
	//		0L, A_GIMME, 0);
    // addmess((method)simplecplusplus_assist,			"assist",		A_CANT, 0);  
	
	// object initialization, NEW STYLE
	t_class *c;
	
	c = class_new("simplecplusplus", (method)simplecplusplus_new, (method)simplecplusplus_free, (long)sizeof(t_simplecplusplus), 
				  0L /* leave NULL!! */, A_GIMME, 0);
	
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)simplecplusplus_assist,			"assist",		A_CANT, 0);
	  
    class_addmethod(c, (method)simplecplusplus_foo,			"foo",	 0);

	class_addmethod(c, (method)simplecplusplus_bang,			"bang",	 0);
	
class_addmethod(c, (method)simplecplusplus_in1,			"in1", A_LONG,	 0);
class_addmethod(c, (method)simplecplusplus_ft2,			"ft2", A_FLOAT,	 0);
class_addmethod(c, (method)simplecplusplus_in3,			"in3", A_LONG,	 0);

	//Types": A_LONG - integer , A_FLOAT : a float , A_GIMME : a list of stuff, A_CANT none
    class_addmethod(c, (method)simplecplusplus_int,			"int", A_LONG, 0);	
		
				
	class_register(CLASS_BOX, c); /* CLASS_NOBOX */
	simplecplusplus_class = c;

	post("I am the simplecplusplus object and is working");
//	post("I set my integer to %ld", int_a);
	return 0;
}

void simplecplusplus_assist(t_simplecplusplus *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) { // inlet
		sprintf(s, "I am inlet %ld", a);
	} 
	else {	// outlet
		sprintf(s, "I am outlet %ld", a); 			
	}
}

//copy this first line to the function declarations at the top::
void simplecplusplus_foo(t_simplecplusplus *x)
{
	x->int_a = 1;
	x->int_b = 1;
			object_post((t_object *)x, "my int is %ld", x->int_a);
	;
}

void simplecplusplus_ft2(t_simplecplusplus *x, double f){
	object_post((t_object*) x, "i got a float %f", f  );
	}

void simplecplusplus_in3(t_simplecplusplus *x, long i){
	x->int_b = i;
	post("Reset second int to %ld", i);
	}
	
void simplecplusplus_in1(t_simplecplusplus *x, long i){
	x->int_a = i;
	outlet_int(x->iout, x->int_a);
	
	}


void simplecplusplus_int(t_simplecplusplus *x, long i){
	x->int_a = i;

	}

void simplecplusplus_bang(t_simplecplusplus *x){
//	post("BANGERS AND MASH");
	long tmp = x->int_a;
	x->int_a = x->int_a + x->int_b;
	x->int_b = tmp;
//	object_post((t_object *) x, "%ld", x->int_a);
	outlet_int(x->iout, x->int_a);
	outlet_float(x->fout, (double) x->int_b);
	outlet_bang(x->bout);
}

void simplecplusplus_free(t_simplecplusplus *x)
{
simplecplusplus_bang(x);
	;
}

       /* for (i = 0; i < argc; i++) {
            if ((argv + i)->a_type == A_LONG) {
                object_post((t_object *)x, "arg %ld: long (%ld)", i, atom_getlong(argv+i));
            } else if ((argv + i)->a_type == A_FLOAT) {
                object_post((t_object *)x, "arg %ld: float (%f)", i, atom_getfloat(argv+i));
            } else if ((argv + i)->a_type == A_SYM) {
                object_post((t_object *)x, "arg %ld: symbol (%s)", i, atom_getsym(argv+i)->s_name);
            } else {
                object_error((t_object *)x, "forbidden argument");
            }
        }
*/
/*
 A_GIMME signature =
	t_symbol	*s		objectname
	long		argc	num additonal args
	t_atom		*argv	array of t_atom structs
		 type = argv->a_type
		 if (type == A_LONG) ;
		 else if (type == A_FLOAT) ;
		 else if (type == A_SYM) ;
*/
/*
	t_symbol {
		char *s_name;
		t_object *s_thing;
	}
*/
void *simplecplusplus_new(t_symbol *s, long argc, t_atom *argv)
{
	t_simplecplusplus *x = NULL;
    //long i;
	// object instantiation, NEW STYLE
	if (x = (t_simplecplusplus *)object_alloc((t_class *) simplecplusplus_class)) {//add in pointer to t_class for c plus plus - only line changed!
        	
			x->int_a = 1;
			
		if (argc == 1){ 
				if (argv->a_type == A_LONG){
				x->int_a = atom_getlong(argv);
				post("Instantiated with int %ld", x->int_a);
				}
				else{
					post("not an int");
					}
		}
	      /*  object_post((t_object *)x, "a new %s object was instantiated: 0x%X", s->s_name, x);
        object_post((t_object *)x, "it has %ld arguments", argc);
        
        for (i = 0; i < argc; i++) {
            if ((argv + i)->a_type == A_LONG) {
                object_post((t_object *)x, "arg %ld: long (%ld)", i, atom_getlong(argv+i));
            } else if ((argv + i)->a_type == A_FLOAT) {
                object_post((t_object *)x, "arg %ld: float (%f)", i, atom_getfloat(argv+i));
            } else if ((argv + i)->a_type == A_SYM) {
                object_post((t_object *)x, "arg %ld: symbol (%s)", i, atom_getsym(argv+i)->s_name);
            } else {
                object_error((t_object *)x, "forbidden argument");
            }
        }
	}*/
	

	x->int_b = 1;

	floatin(x, 2);
	intin(x, 3);
	intin(x, 1);
	
	//ORDER IMPORTANT
	//bang is right
	x->bout  = bangout(x);
	x->fout  = outlet_new(x, "float" );	
	//int out is the leftmost
	x->iout  = intout(x);
	}
	return (x);
}
