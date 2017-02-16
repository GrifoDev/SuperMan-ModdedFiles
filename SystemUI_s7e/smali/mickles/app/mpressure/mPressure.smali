.class public Lmickles/app/mpressure/mPressure;
.super Landroid/widget/LinearLayout;
.source "mPressure.java"


# instance fields
.field Res_pressure:I

.field Res_text_pressure_scale_1:I

.field Res_text_pressure_scale_2:I

.field Res_text_pressure_scale_3:I

.field SENSOR_SERVICE:Ljava/lang/String;

.field listenerPressure:Landroid/hardware/SensorEventListener;

.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field mImageLayout:Landroid/widget/LinearLayout;

.field private mImageParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mTextPressure:Landroid/widget/TextView;

.field private mTextPressureScale:Landroid/widget/TextView;

.field pressureF:F

.field sensorManager:Landroid/hardware/SensorManager;

.field sensorPressure:Landroid/hardware/Sensor;

.field sensorRegistered:I

.field sview_pressure_enable:I

.field sview_pressure_gravity:I

.field sview_pressure_icon_visible:I

.field sview_pressure_padding_horizontal:I

.field sview_pressure_padding_vertical:I

.field sview_pressure_scale:I

.field sview_pressure_scale_visible:I

.field sview_pressure_size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/16 v11, 0x11

    const/4 v10, -0x1

    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v4, "sensor"

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->SENSOR_SERVICE:Ljava/lang/String;

    invoke-static {}, Lmickles/app/resources/myResourcesS5Pressure;->Res_pressure()I

    move-result v4

    iput v4, p0, Lmickles/app/mpressure/mPressure;->Res_pressure:I

    invoke-static {}, Lmickles/app/resources/myResourcesS5Pressure;->Res_text_pressure_scale_1()I

    move-result v4

    iput v4, p0, Lmickles/app/mpressure/mPressure;->Res_text_pressure_scale_1:I

    invoke-static {}, Lmickles/app/resources/myResourcesS5Pressure;->Res_text_pressure_scale_2()I

    move-result v4

    iput v4, p0, Lmickles/app/mpressure/mPressure;->Res_text_pressure_scale_2:I

    invoke-static {}, Lmickles/app/resources/myResourcesS5Pressure;->Res_text_pressure_scale_3()I

    move-result v4

    iput v4, p0, Lmickles/app/mpressure/mPressure;->Res_text_pressure_scale_3:I

    iput v7, p0, Lmickles/app/mpressure/mPressure;->sensorRegistered:I

    new-instance v4, Lmickles/app/mpressure/mPressure$2;

    invoke-direct {v4, p0}, Lmickles/app/mpressure/mPressure$2;-><init>(Lmickles/app/mpressure/mPressure;)V

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->listenerPressure:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lmickles/app/mpressure/mPressure;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lmickles/app/mpressure/mPressure;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lmickles/app/mpressure/mPressure;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->mImageLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lmickles/app/mpressure/mPressure;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x64

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->mImageParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mImageParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lmickles/app/mpressure/mPressure;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->mImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lmickles/app/mpressure/mPressure;->mImageParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mImage:Landroid/widget/ImageView;

    iget v5, p0, Lmickles/app/mpressure/mPressure;->Res_pressure:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mImageLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lmickles/app/mpressure/mPressure;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lmickles/app/mpressure/mPressure;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressure:Landroid/widget/TextView;

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressure:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressure:Landroid/widget/TextView;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressure:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressure:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressure:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lmickles/app/mpressure/mPressure;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lmickles/app/mpressure/mPressure;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressureScale:Landroid/widget/TextView;

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressureScale:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressureScale:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressureScale:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressureScale:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressureScale:Landroid/widget/TextView;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mTextPressureScale:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lmickles/app/mpressure/mPressure;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmickles/app/mpressure/mPressure;->SENSOR_SERVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lmickles/app/mpressure/mPressure;->sensorPressure:Landroid/hardware/Sensor;

    iget-object v4, p0, Lmickles/app/mpressure/mPressure;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lmickles/app/mpressure/mPressure;->listenerPressure:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lmickles/app/mpressure/mPressure;->sensorPressure:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v4, 0x1

    iput v4, p0, Lmickles/app/mpressure/mPressure;->sensorRegistered:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lmickles/app/mpressure/mPressure$1;

    invoke-direct {v4, p0, v0}, Lmickles/app/mpressure/mPressure$1;-><init>(Lmickles/app/mpressure/mPressure;Landroid/os/Handler;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmickles/app/mpressure/mPressure;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmickles/app/mpressure/mPressure;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lmickles/app/mpressure/mPressure;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lmickles/app/mpressure/mPressure;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmickles/app/mpressure/mPressure;->mTextPressureScale:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lmickles/app/mpressure/mPressure;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmickles/app/mpressure/mPressure;->mTextPressure:Landroid/widget/TextView;

    return-object v0
.end method
