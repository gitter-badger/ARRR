#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include <cstring>
#include <vector>
#include <sstream>
#include <typeinfo>
#include "mouse_control.h"

using namespace std;

// get output of command, replace popen and pclose with _popen and _pclose
string exec(char* cmd) {
  FILE* pipe = popen(cmd, "r");
  if(!pipe)
    return "ERROR";
  char buf[128];
  string result = "";
  while(!feof(pipe)) {
    if(fgets(buf, 128, pipe) != NULL)
      result += buf;
  }
  pclose(pipe);
  return result;
}

int exec1(string& cmd) {
  FILE* in;
  char buf[512];
  if(!(in = popen(cmd.c_str(), "r"))) {
    return 1;
  }
  while(fgets(buf, sizeof(buf), in) != NULL) {
    cout << buf;
  }
  pclose(in);
  return 0;
}

string exec2(string& cmd) {
  FILE* in;
  char buf[512];
  if(!(in = popen(cmd.c_str(), "r"))) {
    return "";
  }
  while(fgets(buf, sizeof(buf), in) != NULL) {
    return string(buf);
  }
  pclose(in);
  return "";
}

string& trim_left_in_place(string& str) {
    size_t i = 0;
    while(i < str.size() && isspace(str[i])) { 
      ++i; 
    };
    return str.erase(0, i);
}

string& trim_right_in_place(string& str) {
    size_t i = str.size();
    while(i > 0 && isspace(str[i - 1])) { 
      --i; 
    };
    return str.erase(i, str.size());
}

string& trim_in_place(string& str) {
    return trim_left_in_place(trim_right_in_place(str));
}

// returns newly created strings
string trim_right(string str) {
    return trim_right_in_place(str);
}

string trim_left(string str) {
    return trim_left_in_place(str);
}

string trim(string str) {
    return trim_left_in_place(trim_right_in_place(str));
}

// right and left click by eye blink times
int click(int time) {
  int click;
  if(time == 1) 
    click = 1;
  if(time == 2)
    click = 3;
  return click;
}

// move and click cursor according to center of pupil
int move_cursor(int w, int h, double x, double y, int t) {
  //  int scr_w = GetSystemMetrics(SM_CXSCREEN);
  //int scr_h = GetSystemMetrics(SM_CYSCREEN);
  string cmd_dim = "xdpyinfo | grep dimensions";
  string dim = exec2(cmd_dim);
  dim = dim.substr(dim.find(":") + 5, 8);
  string scr_w_str = dim.substr(0, dim.find("x"));
  string scr_h_str = dim.substr(dim.find("x") + 1);
  scr_h_str = trim_right(scr_h_str);
  int scr_w = atoi(scr_w_str.c_str());
  int scr_h = atoi(scr_h_str.c_str());
  int pos_x = (int)((x/((double)w))*((double)scr_w));
  //  cout << "pos_x: " << pos_x << ", scr_w: " << scr_w << ", x: " << x << ", w: " << w << endl;
  int pos_y = (int)((y/((double)h))*((double)scr_h));
  cout << "pos_y: " << pos_y << endl;
  string cmd = "xdotool mousemove ";
  ostringstream ss;
  ss << pos_x;
  cmd.append(ss.str());
  ss.clear();
  ss.str("");
  ss << pos_y;
  cmd.append(" ");
  cmd.append(ss.str());
  if(t > 0) {
    if(t > 2)
      t = 2;
    cmd.append(" click ");
    ss.clear();
    ss.str("");
    cout << "click(t): " << click(t) << endl;
    ss << click(t);
    cmd.append(ss.str());
  }
  cout << "cursor cmd received: " << cmd << endl;
  exec1(cmd);
}

int double_pupils() {

}

int virtual_keyboard() {
  string cmd = "onboard";
  exec1(cmd);
  return 0;
}

int main(int argc, char *argv[]) {
  /*
  string command;
  string types0[] = {"int", "int *"};
  string types1[] = {"double", "double *"};
  if(argc != 4) {
    cout << "Please pass in 4 input, int: video screen weight, int: video screen height, double: current pupil center x, double: current pupil center y, int: subsequent eye blink times.\n" << endl;
    getline(cin, command);
  }
  else {
    if(!strcmp(typeid(argv[0]).name(), types0[0].c_str()) && 
       !strcmp(typeid(argv[0]).name(), types0[1].c_str())) {
       cout << "1st input must be int" << endl;
    }  
    else if(!strcmp(typeid(argv[1]).name(), types0[0].c_str()) &&
	    !strcmp(typeid(argv[1]).name(), types0[1].c_str())) {
       cout << "2nd input must be int" << endl;
    }
    else if(!strcmp(typeid(argv[2]).name(), types1[0].c_str()) &&
	    !strcmp(typeid(argv[2]).name(), types1[1].c_str())) {
       cout << "3rd input must be double" << endl;
    }
    else if(!strcmp(typeid(argv[3]).name(), types1[0].c_str()) &&
	    !strcmp(typeid(argv[3]).name(), types1[1].c_str())) {
       cout << "4th input must be double" << endl;
    }
    else {
      move_cursor(argv[0], argv[1], argv[2], argv[3]);
    }
  }
  */
  string str;
  virtual_keyboard();
  //getline(cin, str);
  move_cursor(300, 300, 150.0, 150.0, 1);
  //cout << "Command entered: " << str << endl;
  //exec1(str);
}
