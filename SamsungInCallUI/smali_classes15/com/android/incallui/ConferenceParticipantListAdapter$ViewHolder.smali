.class Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public callId:Ljava/lang/String;

.field public conferenceCallerInfo:Landroid/view/View;

.field public conferenceRowCallStateLabel:Landroid/widget/TextView;

.field public deleteButton:Landroid/view/View;

.field public endButton:Landroid/view/View;

.field public endButtonContainerView:Landroid/view/View;

.field public hdIconView:Landroid/widget/ImageView;

.field public nameTextView:Landroid/widget/TextView;

.field public numberTextView:Landroid/widget/TextView;

.field public numberTypeTextView:Landroid/widget/TextView;

.field public parentView:Landroid/view/View;

.field public photoContainerView:Landroid/view/View;

.field public photoTextView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/ImageView;

.field public separateButton:Landroid/view/View;

.field public separateLayout:Landroid/view/View;

.field public viewIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/ConferenceParticipantListAdapter$1;

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 444
    if-nez p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 446
    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    .line 447
    .local v0, "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->parentView:Landroid/view/View;

    iget-object v3, v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->parentView:Landroid/view/View;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    const/4 v1, 0x1

    goto :goto_0
.end method
