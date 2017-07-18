.class Lmickles/app/mpressure/mPressure$1;
.super Ljava/lang/Object;
.source "mPressure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmickles/app/mpressure/mPressure;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mpressure/mPressure;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lmickles/app/mpressure/mPressure;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iput-object p2, p0, Lmickles/app/mpressure/mPressure$1;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/16 v5, 0x8

    const-wide v10, 0x3fe800d1b71758e2L    # 0.7501

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v1}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_pressure_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_enable:I

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_enable:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->sensorRegistered:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v0, v0, Lmickles/app/mpressure/mPressure;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, v1, Lmickles/app/mpressure/mPressure;->listenerPressure:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v2, v2, Lmickles/app/mpressure/mPressure;->sensorPressure:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iput v4, v0, Lmickles/app/mpressure/mPressure;->sensorRegistered:I

    :cond_0
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v1}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_pressure_icon_visible"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_icon_visible:I

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_icon_visible:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v0}, Lmickles/app/mpressure/mPressure;->access$100(Lmickles/app/mpressure/mPressure;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v1}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_pressure_scale_visible"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_scale_visible:I

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_scale_visible:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v0}, Lmickles/app/mpressure/mPressure;->access$200(Lmickles/app/mpressure/mPressure;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v1}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_pressure_gravity"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_gravity:I

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v1}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_pressure_padding_vertical"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_padding_vertical:I

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v1}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_pressure_padding_horizontal"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_padding_horizontal:I

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v1}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_pressure_scale"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_scale:I

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_gravity:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmickles/app/mpressure/mPressure;->setGravity(I)V

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v1, v1, Lmickles/app/mpressure/mPressure;->sview_pressure_padding_horizontal:I

    mul-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v2, v2, Lmickles/app/mpressure/mPressure;->sview_pressure_padding_vertical:I

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v1, v2, v6, v6}, Lmickles/app/mpressure/mPressure;->setPadding(IIII)V

    :goto_2
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_scale:I

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v0}, Lmickles/app/mpressure/mPressure;->access$300(Lmickles/app/mpressure/mPressure;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->pressureF:F

    float-to-double v2, v0

    mul-double/2addr v2, v10

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_5

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->pressureF:F

    float-to-double v2, v0

    mul-double/2addr v2, v10

    sub-double/2addr v2, v8

    double-to-int v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "color_barometr"

    const v14, -0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v0}, Lmickles/app/mpressure/mPressure;->access$200(Lmickles/app/mpressure/mPressure;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v2}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v3, v3, Lmickles/app/mpressure/mPressure;->Res_text_pressure_scale_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v2}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v3, v3, Lmickles/app/mpressure/mPressure;->Res_text_pressure_scale_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "color_barometr"

    const v14, -0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-virtual {v0, v6}, Lmickles/app/mpressure/mPressure;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->val$h:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v0}, Lmickles/app/mpressure/mPressure;->access$100(Lmickles/app/mpressure/mPressure;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v0}, Lmickles/app/mpressure/mPressure;->access$200(Lmickles/app/mpressure/mPressure;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->sview_pressure_gravity:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-virtual {v0, v4}, Lmickles/app/mpressure/mPressure;->setGravity(I)V

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v1, v1, Lmickles/app/mpressure/mPressure;->sview_pressure_padding_vertical:I

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v6, v1, v6, v6}, Lmickles/app/mpressure/mPressure;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmickles/app/mpressure/mPressure;->setGravity(I)V

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v1, v1, Lmickles/app/mpressure/mPressure;->sview_pressure_padding_vertical:I

    mul-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v2, v2, Lmickles/app/mpressure/mPressure;->sview_pressure_padding_horizontal:I

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v6, v1, v2, v6}, Lmickles/app/mpressure/mPressure;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->pressureF:F

    float-to-double v2, v0

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    double-to-int v0, v2

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v0}, Lmickles/app/mpressure/mPressure;->access$300(Lmickles/app/mpressure/mPressure;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->pressureF:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->pressureF:F

    float-to-double v2, v0

    sub-double/2addr v2, v8

    double-to-int v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "color_barometr"

    const v14, -0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v0}, Lmickles/app/mpressure/mPressure;->access$200(Lmickles/app/mpressure/mPressure;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-static {v1}, Lmickles/app/mpressure/mPressure;->access$000(Lmickles/app/mpressure/mPressure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v2, v2, Lmickles/app/mpressure/mPressure;->Res_text_pressure_scale_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "color_barometr"

    const v14, -0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget v0, v0, Lmickles/app/mpressure/mPressure;->pressureF:F

    float-to-double v2, v0

    add-double/2addr v2, v8

    double-to-int v0, v2

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v0, v0, Lmickles/app/mpressure/mPressure;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, v1, Lmickles/app/mpressure/mPressure;->listenerPressure:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    iput v6, v0, Lmickles/app/mpressure/mPressure;->sensorRegistered:I

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$1;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-virtual {v0, v5}, Lmickles/app/mpressure/mPressure;->setVisibility(I)V

    goto/16 :goto_5
.end method
