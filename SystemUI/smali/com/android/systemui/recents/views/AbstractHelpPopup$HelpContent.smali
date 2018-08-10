.class public Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
.super Ljava/lang/Object;
.source "AbstractHelpPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/AbstractHelpPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelpContent"
.end annotation


# instance fields
.field buttonTitleId:I

.field contentDescResId:I

.field helpHubImageResId:[I

.field helpHubTextResId:I

.field imageResId:I

.field subtitleResId:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->subtitleResId:I

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubTextResId:I

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    iput p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->subtitleResId:I

    iput p2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    iput p3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubTextResId:I

    iput p4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    iput p5, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    return-void
.end method


# virtual methods
.method public isValidContent()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubTextResId:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    if-gez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public varargs setHelpTextIconList([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubImageResId:[I

    return-void
.end method
