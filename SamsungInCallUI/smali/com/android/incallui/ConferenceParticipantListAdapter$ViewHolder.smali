.class Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->parentView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->parentView:Landroid/view/View;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
