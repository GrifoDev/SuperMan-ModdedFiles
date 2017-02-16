.class public Lcom/cmdm/control/util/ToastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final dl:I = 0x1770


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeLongToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeLongToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showLongToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    return-void
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    return-void
.end method

.method public static showShortToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 73
    const-wide/16 v0, 0x1770

    invoke-static {p0, p1, v0, v1}, Lcom/cmdm/control/util/ToastCustomUtil;->showToast(Landroid/content/Context;IJ)V

    .line 74
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    const-wide/16 v0, 0x1770

    invoke-static {p0, p1, v0, v1}, Lcom/cmdm/control/util/ToastCustomUtil;->showToast(Landroid/content/Context;Ljava/lang/String;J)V

    .line 68
    return-void
.end method
