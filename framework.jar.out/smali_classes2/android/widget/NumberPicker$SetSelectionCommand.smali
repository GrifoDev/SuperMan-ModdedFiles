.class Landroid/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private final mInputText:Landroid/widget/EditText;

.field private mPosted:Z

.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    :cond_0
    return-void
.end method

.method public post(II)V
    .locals 1

    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iput p2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    iget-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method
