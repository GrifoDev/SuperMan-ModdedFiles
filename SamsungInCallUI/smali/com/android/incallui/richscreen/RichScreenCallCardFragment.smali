.class public Lcom/android/incallui/richscreen/RichScreenCallCardFragment;
.super Lcom/android/incallui/fragment/VoiceCallCardFragment;

# interfaces
.implements Lcom/android/incallui/CallCardUi;


# instance fields
.field private mContactCid:Ljava/lang/String;

.field private mDisplayingView:Landroid/view/View;

.field private mRichInfoUri:Ljava/lang/String;

.field private mRichScreenGreetingString:Ljava/lang/String;

.field private mRichScreenImageView:Landroid/widget/ImageView;

.field private mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

.field private mRichScreenNumNamePNLBg:Landroid/widget/ImageView;

.field private mRichScreenSaveButton:Landroid/widget/Button;

.field private mRichScreenText:Landroid/widget/TextView;

.field public mRichScreenType:Ljava/lang/String;

.field private mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

.field private mRichScreenVideoViewStub:Landroid/view/ViewStub;

.field private mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

.field private mStopPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;-><init>()V

    return-void
.end method

.method private arrangeRichScreenInfoView(Landroid/view/View;)V
    .locals 9

    const v8, 0x7f0a0123

    const v7, 0x7f0a060a

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a04e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a04ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0, v4, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a04eb

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p1, v3, v4, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private setDisplayingView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mDisplayingView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public RCSVideoPause()V
    .locals 1

    const-string v0, "RCSVideoPause"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    invoke-virtual {v0}, Lcom/android/incallui/richscreen/CustomerVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mStopPosition:I

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    invoke-virtual {v0}, Lcom/android/incallui/richscreen/CustomerVideoView;->stopPlayback()V

    return-void
.end method

.method public RCSVideoReplay()V
    .locals 2

    const-string v0, "RCSVideoReplay"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    iget v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mStopPosition:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/CustomerVideoView;->seekTo(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mStopPosition:I

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0603

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    int-to-float v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const-string v0, "onClick: call super onClick"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v0}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mContactCid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1003c9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateRichScreenView()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Greeting:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenGreetingString:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mContactCid:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCSType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ;RCSUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ;mRCSGreeting :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenGreetingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ;mContactCid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mContactCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenGreetingString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenGreetingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/richscreen/MovieImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->arrangeRichScreenInfoView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->setDisplayingView(Landroid/view/View;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenNumNamePNLBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenNumNamePNLBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateRichScreenView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/MovieImageView;->setImageMovie(Landroid/graphics/Movie;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->arrangeRichScreenInfoView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/richscreen/MovieImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->setDisplayingView(Landroid/view/View;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateRichScreenView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/richscreen/MovieImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/richscreen/CustomerVideoView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/CustomerVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    invoke-virtual {v0}, Lcom/android/incallui/richscreen/CustomerVideoView;->start()V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    new-instance v1, Lcom/android/incallui/richscreen/RichScreenCallCardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment$1;-><init>(Lcom/android/incallui/richscreen/RichScreenCallCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/CustomerVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->arrangeRichScreenInfoView(Landroid/view/View;)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/richscreen/CustomerVideoView;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->setDisplayingView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setRichScreen(Z)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040128

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "onDestroyView..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setRichScreen(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->onCreateRichScreenView()V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/richscreen/ScreenActionReceiver;

    invoke-direct {v0}, Lcom/android/incallui/richscreen/ScreenActionReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/ScreenActionReceiver;->registerScreenActionReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "onStop..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onStop()V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/ScreenActionReceiver;->unRegisterScreenActionReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f1003c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenText:Landroid/widget/TextView;

    const v0, 0x7f1003c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenSaveButton:Landroid/widget/Button;

    const v0, 0x7f1003ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/richscreen/CustomerVideoView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    const v0, 0x7f1003c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    const v0, 0x7f1003c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    const v0, 0x7f1003c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/richscreen/MovieImageView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    const v0, 0x7f1003c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenNumNamePNLBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 1

    invoke-super/range {p0 .. p10}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mDisplayingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->arrangeRichScreenInfoView(Landroid/view/View;)V

    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->onCreateRichScreenView()V

    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
