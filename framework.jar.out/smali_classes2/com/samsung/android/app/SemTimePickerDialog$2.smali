.class Lcom/samsung/android/app/SemTimePickerDialog$2;
.super Ljava/lang/Object;
.source "SemTimePickerDialog.java"

# interfaces
.implements Lcom/samsung/android/widget/SemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/SemTimePickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/SemTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/SemTimePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/SemTimePickerDialog$2;->this$0:Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog$2;->this$0:Lcom/samsung/android/app/SemTimePickerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/SemTimePickerDialog;->-set0(Lcom/samsung/android/app/SemTimePickerDialog;Z)Z

    return-void
.end method
