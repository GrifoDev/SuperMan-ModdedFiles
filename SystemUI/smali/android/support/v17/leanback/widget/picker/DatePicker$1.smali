.class Landroid/support/v17/leanback/widget/picker/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/picker/DatePicker;->updateSpinners(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/picker/DatePicker;

.field final synthetic val$animation:Z


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/picker/DatePicker;Z)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker$1;->this$0:Landroid/support/v17/leanback/widget/picker/DatePicker;

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker$1;->val$animation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker$1;->this$0:Landroid/support/v17/leanback/widget/picker/DatePicker;

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker$1;->val$animation:Z

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->-wrap0(Landroid/support/v17/leanback/widget/picker/DatePicker;Z)V

    return-void
.end method
