.class Lcom/android/systemui/rz/LeftLayout$1;
.super Ljava/lang/Object;
.source "LeftLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/rz/LeftLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/rz/LeftLayout;

.field private final val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/rz/LeftLayout;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout$1;->this$0:Lcom/android/systemui/rz/LeftLayout;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout$1;->val$c:Landroid/content/Context;

    return-void
.end method

.method static access$0(Lcom/android/systemui/rz/LeftLayout$1;)Lcom/android/systemui/rz/LeftLayout;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/rz/LeftLayout$1;->this$0:Lcom/android/systemui/rz/LeftLayout;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/rz/LeftLayout$1;->val$c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object v2, v9

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/rz/LeftLayout$1;->this$0:Lcom/android/systemui/rz/LeftLayout;

    invoke-static {v10}, Lcom/android/systemui/rz/LeftLayout;->access$L1000002(Lcom/android/systemui/rz/LeftLayout;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    move v3, v9

    move v9, v3

    const/4 v10, 0x0

    if-ne v9, v10, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/rz/LeftLayout$1;->this$0:Lcom/android/systemui/rz/LeftLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/systemui/rz/LeftLayout;->setVisibility(I)V

    :cond_0
    move v9, v3

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/rz/LeftLayout$1;->this$0:Lcom/android/systemui/rz/LeftLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/rz/LeftLayout;->setVisibility(I)V

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/rz/LeftLayout$1;->this$0:Lcom/android/systemui/rz/LeftLayout;

    invoke-virtual {v9}, Lcom/android/systemui/rz/LeftLayout;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move-wide v4, v9

    move-wide v9, v4

    const/16 v11, 0x3e8

    int-to-long v11, v11

    move-wide v13, v4

    const/16 v15, 0x3e8

    int-to-long v15, v15

    rem-long/2addr v13, v15

    sub-long/2addr v11, v13

    add-long/2addr v9, v11

    move-wide v6, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/rz/LeftLayout$1;->this$0:Lcom/android/systemui/rz/LeftLayout;

    invoke-static {v9}, Lcom/android/systemui/rz/LeftLayout;->access$L1000001(Lcom/android/systemui/rz/LeftLayout;)Landroid/os/Handler;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/rz/LeftLayout$1;->this$0:Lcom/android/systemui/rz/LeftLayout;

    invoke-static {v10}, Lcom/android/systemui/rz/LeftLayout;->access$L1000000(Lcom/android/systemui/rz/LeftLayout;)Ljava/lang/Runnable;

    move-result-object v10

    move-wide v11, v6

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v9

    return-void
.end method
