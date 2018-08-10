.class Lcom/android/server/policy/LegacyGlobalActions$3;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v1, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v2, v7

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap8(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get37(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap16(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get36(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap17(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v6

    :goto_0
    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get63()Z

    move-result v7

    if-eqz v7, :cond_1

    if-lt v1, v5, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get37(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v7

    add-int/2addr v7, v5

    if-gt v1, v7, :cond_1

    sub-int v7, v6, v4

    if-lt v2, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get36(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_1

    return v9

    :cond_0
    const v7, 0x102000b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get37(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap17(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get36(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap16(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get63()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v3, :cond_2

    if-lt v1, v5, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get37(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v7

    add-int/2addr v7, v5

    if-gt v1, v7, :cond_2

    return v9

    :cond_2
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get63()Z

    move-result v7

    if-nez v7, :cond_3

    xor-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_3

    sub-int v7, v6, v4

    if-lt v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get36(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_3

    return v9

    :cond_3
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get58()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get63()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    return v10

    :cond_4
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get63()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v3, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap30(Lcom/android/server/policy/LegacyGlobalActions;ZZ)V

    :goto_1
    return v10

    :cond_5
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get23(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_6
    if-ne v0, v10, :cond_7

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get58()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get63()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set19(Z)Z

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set7(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set4(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set5(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    :cond_7
    :goto_2
    return v9

    :cond_8
    invoke-static {v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set17(Z)Z

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get23(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
