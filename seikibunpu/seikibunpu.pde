int i,i2,cnt,hoge;
int[] high;

void setup(){
  size(640,480);
  cnt=0;
  high=new int[640];
  for (i=0;i<640;i++) high[i]=0;
}

void draw(){
  update();
  background(0);
  stroke(255);
  for(int i=0;i<160;i++){
    rect(i*4-2,480-(high[i]*480/cnt),4,high[i]*480/cnt);
  }
}

void update(){
 cnt++;
 for(i2=0;i2<10;i2++){
   hoge=0;
   for(i=0;i<160;i++) hoge+=int(random(2));
   high[hoge]++;
   //if(cnt<high[hoge]) cnt=high[hoge];
 }
}