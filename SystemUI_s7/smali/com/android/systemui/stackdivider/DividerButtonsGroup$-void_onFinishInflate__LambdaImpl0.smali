.class final synthetic Lcom/android/systemui/stackdivider/DividerButtonsGroup$-void_onFinishInflate__LambdaImpl0;
.super Ljava/lang/Object;
.source "DividerButtonsGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerButtonsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onFinishInflate__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/stackdivider/DividerButtonsGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$-void_onFinishInflate__LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$-void_onFinishInflate__LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->-com_android_systemui_stackdivider_DividerButtonsGroup_lambda$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
