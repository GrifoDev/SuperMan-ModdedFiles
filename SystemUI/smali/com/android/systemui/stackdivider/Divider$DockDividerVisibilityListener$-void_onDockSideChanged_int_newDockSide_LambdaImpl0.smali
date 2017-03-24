.class final synthetic Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onDockSideChanged_int_newDockSide_LambdaImpl0;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onDockSideChanged_int_newDockSide_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$newDockSide:I

.field private synthetic val$this:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onDockSideChanged_int_newDockSide_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iput p2, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onDockSideChanged_int_newDockSide_LambdaImpl0;->val$newDockSide:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onDockSideChanged_int_newDockSide_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget v1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onDockSideChanged_int_newDockSide_LambdaImpl0;->val$newDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->-com_android_systemui_stackdivider_Divider$DockDividerVisibilityListener_lambda$2(I)V

    return-void
.end method
