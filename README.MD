https://blog.csdn.net/DuMeiLin1/article/details/79410866

https://blog.csdn.net/zjkC050818/article/details/78449449


高并发解决策略：
https://blog.csdn.net/bestdatas/article/details/17057607
https://blog.csdn.net/xf_87/article/details/50999338
https://blog.csdn.net/lixld/article/details/37933319


python 处理字符
https://blog.csdn.net/u013314786/article/details/77774579



https://blog.csdn.net/xdkb159/article/details/74389800






public static void test() {
        int x = rand(7);
        if (x >= 0 && x <= 3) {
            System.out.println(1);
        } else if (x > 3 && x <= 5) {
            System.out.println(2);
        } else if (x>5&&x<7) {
            System.out.println(3);
        }
  }




    public static void test(int a, int b, int c) {
        int x = rand(a+b+c);
        int arr[] = {a, b, c};
        int element[]={1,2,3};
        sort(arr,element);
        if (x >= 0 && x < arr[0]) {
            System.out.println(element[0]);
        } else if (x >= arr[0] && x < arr[0]+arr[1]) {
            System.out.println(element[1]);
        } else if (x >= arr[0]+arr[1] && x < arr[0]+arr[1]+arr[2]) {
            System.out.println(element[2]);
        }
    }

    public static void sort(int []percentage,int []element){
        for (int i = 0,lenth=percentage.length; i <lenth-1 ; i++) {
            for (int j = 0; j <lenth-i-1 ; j++) {
                if(percentage[j]>percentage[j+1]){
                    int tmp=percentage[j];
                    percentage[j]=percentage[j+1];
                    percentage[j+1]=tmp;

                    int elTmp=element[j];
                    element[j]=element[j+1];
                    element[j+1]=elTmp;
                }
            }
        }
    }
