.class Lcom/samsung/android/settings/Password$1;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/Password;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/Password;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/Password;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/Password$1;->this$0:Lcom/samsung/android/settings/Password;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/16 v6, 0x19

    const/16 v5, 0x18

    const/16 v4, 0x14

    const/4 v3, 0x4

    const/4 v2, 0x1

    if-eq p2, v4, :cond_0

    const/16 v0, 0x43

    if-eq p2, v0, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v6, :cond_0

    if-eq p2, v5, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/Password$1;->this$0:Lcom/samsung/android/settings/Password;

    invoke-static {v0}, Lcom/samsung/android/settings/Password;->-get0(Lcom/samsung/android/settings/Password;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    if-eq p2, v4, :cond_2

    const/16 v0, 0x43

    if-eq p2, v0, :cond_2

    if-eq p2, v3, :cond_2

    if-eq p2, v6, :cond_2

    if-eq p2, v5, :cond_2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_1

    const/16 v0, 0x10

    if-le p2, v0, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
