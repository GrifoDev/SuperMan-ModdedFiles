.class public Landroid/text/style/AccessibilityURLSpan;
.super Landroid/text/style/URLSpan;
.source "AccessibilityURLSpan.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field final mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    return-void
.end method

.method public constructor <init>(Landroid/text/style/URLSpan;)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    iput-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    return-void
.end method


# virtual methods
.method public copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/AccessibilityURLSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityURLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
