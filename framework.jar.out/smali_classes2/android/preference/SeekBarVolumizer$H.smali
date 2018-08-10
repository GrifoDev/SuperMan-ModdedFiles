.class final Landroid/preference/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$H;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get11(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-set2(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-set1(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1, v0}, Landroid/preference/SeekBarVolumizer;->-set3(Landroid/preference/SeekBarVolumizer;Z)Z

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-wrap4(Landroid/preference/SeekBarVolumizer;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    :cond_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    :cond_1
    return-void
.end method

.method public postUpdateSlider(IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/preference/SeekBarVolumizer$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
