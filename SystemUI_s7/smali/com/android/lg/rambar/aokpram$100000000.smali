.class Lcom/android/lg/rambar/aokpram$100000000;
.super Ljava/lang/Object;
.source "aokpram.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lg/rambar/aokpram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/lg/rambar/aokpram;

.field private final val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/lg/rambar/aokpram;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/lg/rambar/aokpram$100000000;->this$0:Lcom/android/lg/rambar/aokpram;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/lg/rambar/aokpram$100000000;->val$h:Landroid/os/Handler;

    return-void
.end method

.method static access$0(Lcom/android/lg/rambar/aokpram$100000000;)Lcom/android/lg/rambar/aokpram;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/lg/rambar/aokpram$100000000;->this$0:Lcom/android/lg/rambar/aokpram;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v0, p0

    new-instance v12, Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object v1, v12

    invoke-static {}, Lcom/android/lg/rambar/aokpram;->access$L1000002()Landroid/app/ActivityManager;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const/4 v12, 0x0

    int-to-long v12, v12

    move-wide v2, v12

    invoke-static {}, Lcom/android/lg/rambar/aokpram;->access$L1000003()Lcom/android/lg/rambar/MemInfoReader;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/lg/rambar/MemInfoReader;->readMemInfo()V

    invoke-static {}, Lcom/android/lg/rambar/aokpram;->access$L1000003()Lcom/android/lg/rambar/MemInfoReader;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/lg/rambar/MemInfoReader;->getFreeSize()J

    move-result-wide v12

    invoke-static {}, Lcom/android/lg/rambar/aokpram;->access$L1000003()Lcom/android/lg/rambar/MemInfoReader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/lg/rambar/MemInfoReader;->getCachedSize()J

    move-result-wide v14

    add-long/2addr v12, v14

    move-wide v14, v2

    sub-long/2addr v12, v14

    move-wide v4, v12

    invoke-static {}, Lcom/android/lg/rambar/aokpram;->access$L1000003()Lcom/android/lg/rambar/MemInfoReader;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/lg/rambar/MemInfoReader;->getTotalSize()J

    move-result-wide v12

    move-wide v6, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/android/lg/rambar/aokpram$100000000;->this$0:Lcom/android/lg/rambar/aokpram;

    invoke-virtual {v12}, Lcom/android/lg/rambar/aokpram;->getContext()Landroid/content/Context;

    move-result-object v12

    move-wide v13, v6

    move-wide v15, v4

    sub-long/2addr v13, v15

    invoke-static {v12, v13, v14}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    invoke-static {}, Lcom/android/lg/rambar/aokpram;->access$L1000001()Landroid/widget/TextView;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/android/lg/rambar/aokpram$100000000;->this$0:Lcom/android/lg/rambar/aokpram;

    invoke-virtual {v13}, Lcom/android/lg/rambar/aokpram;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/android/lg/rambar/aokpram$100000000;->this$0:Lcom/android/lg/rambar/aokpram;

    invoke-static {v14}, Lcom/android/lg/rambar/aokpram;->access$L1000009(Lcom/android/lg/rambar/aokpram;)I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move-object/from16 v18, v8

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/lg/rambar/aokpram$100000000;->setUsedRamText(Landroid/widget/TextView;)V

    move-object v12, v0

    iget-object v12, v12, Lcom/android/lg/rambar/aokpram$100000000;->this$0:Lcom/android/lg/rambar/aokpram;

    invoke-virtual {v12}, Lcom/android/lg/rambar/aokpram;->getContext()Landroid/content/Context;

    move-result-object v12

    move-wide v13, v4

    invoke-static {v12, v13, v14}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    invoke-static {}, Lcom/android/lg/rambar/aokpram;->access$L1000000()Landroid/widget/TextView;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/android/lg/rambar/aokpram$100000000;->this$0:Lcom/android/lg/rambar/aokpram;

    invoke-virtual {v13}, Lcom/android/lg/rambar/aokpram;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/android/lg/rambar/aokpram$100000000;->this$0:Lcom/android/lg/rambar/aokpram;

    invoke-static {v14}, Lcom/android/lg/rambar/aokpram;->access$L1000010(Lcom/android/lg/rambar/aokpram;)I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move-object/from16 v18, v8

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/lg/rambar/aokpram$100000000;->setFreeRamText(Landroid/widget/TextView;)V

    move-wide v12, v6

    long-to-float v12, v12

    move v9, v12

    move-wide v12, v4

    long-to-float v12, v12

    move v10, v12

    invoke-static {}, Lcom/android/lg/rambar/aokpram;->access$L1000005()Lcom/android/lg/rambar/LinearColorBar;

    move-result-object v12

    move v13, v9

    move v14, v10

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/4 v14, 0x0

    int-to-float v14, v14

    const/4 v15, 0x0

    int-to-float v15, v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/lg/rambar/LinearColorBar;->setRatios(FFF)V

    move-object v12, v0

    iget-object v12, v12, Lcom/android/lg/rambar/aokpram$100000000;->val$h:Landroid/os/Handler;

    move-object v13, v0

    const/16 v14, 0x3e8

    int-to-long v14, v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v12

    return-void
.end method

.method setFreeRamText(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "free_ram_text"

    const v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method setUsedRamText(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "used_ram_text"

    const v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
