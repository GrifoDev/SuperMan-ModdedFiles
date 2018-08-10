.class public Lcom/samsung/android/settings/SecCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "SecCheckedTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const-string/jumbo v1, "sec-roboto-light"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecCheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
