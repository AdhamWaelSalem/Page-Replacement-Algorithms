#include <iostream>
#include <string>
#include <vector>
#include <queue>
#include <bits/stdc++.h>
using namespace std;


vector<int> readInputStream();
void FIFO(vector<int> inputStream,int availablePages, int* pageFaults);
void LRU(vector<int> inputStream,int availablePages, int* pageFaults);
void OPTIMAL(vector<int> inputStream,int availablePages, int* pageFaults);
void CLOCK(vector<int> inputStream,int availablePages, int* pageFaults);

int main() {
    int availablePages;
    string Algorithm;
    int pageFaults = 0;
    cin >> availablePages;
    cin >> Algorithm;
    vector<int> inputStream = readInputStream();
    cout << "Replacement Policy = " << Algorithm << endl;
    cout << "-------------------------------------" << endl;
    cout << "Page   Content of Frames" << endl;
    cout << "----   -----------------" << endl;
    if (Algorithm == "FIFO") {
        FIFO(inputStream, availablePages, &pageFaults);
    } else if (Algorithm == "LRU") {
        LRU(inputStream, availablePages, &pageFaults);
    } else if (Algorithm == "OPTIMAL") {
        OPTIMAL(inputStream, availablePages, &pageFaults);
    } else if (Algorithm == "CLOCK") {
        CLOCK(inputStream,availablePages, &pageFaults);
    }
    cout << "-------------------------------------" << endl;
    cout << "Number of page faults = " << pageFaults << endl;
    return 0;
}

vector<int> readInputStream() {
    vector<int> inputStream;
    int buffer;
    cin >> buffer;
    while (buffer != -1) {
        inputStream.push_back(buffer);
        cin >> buffer;
    }
    return inputStream;
}

void FIFO(vector<int> inputStream,int availablePages, int* pageFaults) {
    vector<int> page;
    queue<int> queue;
    int i = 0;
    int a = 0;
    *pageFaults = 0;
    while (a < availablePages && i < inputStream.size()) {
        printf("%02d     ",inputStream[i]);
        auto finder = find(page.begin(), page.end(), inputStream[i]);
        if (finder == page.end()) {
            //NOT FOUND ELEMENT
            page.push_back(inputStream[i]);
            queue.push(inputStream[i]);
            a++;
        }
        for (int j : page) {
            printf("%02d ",j);
        }
        i++;
        cout << endl;
    }
    while (i < inputStream.size()) {
        printf("%02d",inputStream[i]);
        auto finder = find(page.begin(), page.end(), inputStream[i]);
        if (finder != page.end()) {
            //FOUND ELEMENT
            //index = finder - page.begin();
            printf("     ");

        } else {
            printf(" F   ");
            //DID NOT FIND ELEMENT
            (*pageFaults)++;
            for (int k = 0; k < availablePages; ++k) {
                if(page[k] == queue.front()){
                    page[k] = inputStream[i];
                    queue.push(inputStream[i]);
                    queue.pop();
                    break;
                }
            }
        }
        for (int j : page) {
            printf("%02d ",j);
        }
        cout << endl;
        i++;
    }
}

void LRU(vector<int> inputStream,int availablePages,int *pageFaults) {
    vector<int> page;
    int i = 0;
    int a = 0;
    *pageFaults = 0;
    while (a < availablePages && i < inputStream.size()) {
        printf("%02d     ",inputStream[i]);
        auto finder = find(page.begin(), page.end(), inputStream[i]);
        if (finder == page.end()) {
            //NOT FOUND ELEMENT
            page.push_back(inputStream[i]);
            a++;
        }
        for (int j : page) {
            printf("%02d ",j);
        }
        i++;
        cout << endl;
    }
    while (i < inputStream.size()) {
        printf("%02d",inputStream[i]);
        auto finder = find(page.begin(), page.end(), inputStream[i]);
        if (finder != page.end()) {
            //FOUND ELEMENT
            //index = finder - page.begin();
            printf("     ");

        } else {
            printf(" F   ");
            //DID NOT FIND ELEMENT
            (*pageFaults)++;
            int minIndex = i;
            int index = i;
            int change = i;
            for (int k = 0; k < availablePages; ++k) {
                for (int j = i-1; j > -1; --j) {
                    if (inputStream[j] == page[k]) {
                        index = j;
                        break;
                    }
                }
                if(index < minIndex) {
                    minIndex = index;
                    change = k;
                }
            }
            page[change] = inputStream[i];
        }
        for (int j : page) {
            printf("%02d ",j);
        }
        cout << endl;
        i++;
    }
}

void OPTIMAL(vector<int> inputStream,int availablePages, int* pageFaults) {
    vector<int> page;
    int i = 0;
    int a = 0;
    *pageFaults = 0;
    while (a < availablePages && i < inputStream.size()) {
        printf("%02d     ",inputStream[i]);
        auto finder = find(page.begin(), page.end(), inputStream[i]);
        if (finder == page.end()) {
            //NOT FOUND ELEMENT
            page.push_back(inputStream[i]);
            a++;
        }
        for (int j : page) {
            printf("%02d ",j);
        }
        i++;
        cout << endl;
    }
    while (i < inputStream.size()) {
        printf("%02d",inputStream[i]);
        auto finder = find(page.begin(), page.end(), inputStream[i]);
        if (finder != page.end()) {
            //FOUND ELEMENT
            //index = finder - page.begin();
            printf("     ");

        } else {
            printf(" F   ");
            //DID NOT FIND ELEMENT
            (*pageFaults)++;
            int maxIndex = -1;
            int index = inputStream.size();
            int change = -1;
            for (int k = 0; k < availablePages; ++k) {
                for (int j = i+1; j < inputStream.size(); ++j) {
                    index = inputStream.size();
                    if (inputStream[j] == page[k]) {
                        index = j;
                        break;
                    }
                }
                if(index > maxIndex) {
                    maxIndex = index;
                    change = k;
                }
            }
            page[change] = inputStream[i];
        }
        for (int j : page) {
            printf("%02d ",j);
        }
        cout << endl;
        i++;
    }
}

void CLOCK(vector<int> inputStream,int availablePages, int* pageFaults) {
    vector<int> page;
    vector<int> bits;
    int i = 0;
    int a = 0;
    *pageFaults = 0;
    while (a < availablePages && i < inputStream.size()) {
        printf("%02d     ",inputStream[i]);
        auto finder = find(page.begin(), page.end(), inputStream[i]);
        if (finder == page.end()) {
            //NOT FOUND ELEMENT
            page.push_back(inputStream[i]);
            bits.push_back(1);
            a++;
        }
        for (int j : page) {
            printf("%02d ",j);
        }
        i++;
        cout << endl;
    }
    int index = 0;
    while (i < inputStream.size()) {
        printf("%02d",inputStream[i]);
        auto finder = find(page.begin(), page.end(), inputStream[i]);
        if (finder != page.end()) {
            //FOUND ELEMENT
            int foundIndex = finder - page.begin();
            printf("     ");
            bits[foundIndex] = 1;

        } else {
            printf(" F   ");
            //DID NOT FIND ELEMENT
            (*pageFaults)++;
            while (true) {
                if (bits[index] == 1)
                    bits[index] = 0;
                else {
                    page[index] = inputStream[i];
                    bits[index] = 1;
                    index++;
                    index = index % availablePages;
                    break;
                }
                index++;
                index = index % availablePages;
            }
        }
        for (int j : page) {
            printf("%02d ",j);
        }
        cout << endl;
        i++;
    }
}

