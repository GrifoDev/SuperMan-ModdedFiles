.class public Landroid/support/v17/leanback/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SearchBar$1;,
        Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;,
        Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoStartRecognition:Z

.field private mBackgroundAlpha:I

.field private mBackgroundSpeechAlpha:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeView:Landroid/widget/ImageView;

.field private mBarBackground:Landroid/graphics/drawable/Drawable;

.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHint:Ljava/lang/String;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListening:Z

.field private mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

.field private mRecognizing:Z

.field private mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

.field private mSoundMap:Landroid/util/SparseIntArray;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

.field private mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private final mTextColor:I

.field private final mTextColorSpeechMode:I

.field private final mTextHintColor:I

.field private final mTextHintColorSpeechMode:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v17/leanback/widget/SearchBar;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    return v0
.end method

.method static synthetic -get2(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v17/leanback/widget/SearchBar;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    return v0
.end method

.method static synthetic -get4(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    return-object v0
.end method

.method static synthetic -get5(Landroid/support/v17/leanback/widget/SearchBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SearchEditText;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    return-object v0
.end method

.method static synthetic -get7(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get8(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic -get9(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SpeechOrbView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v17/leanback/widget/SearchBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    return p1
.end method

.method static synthetic -set1(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchFailure()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchOpen()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchSuccess()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQueryInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->showNativeKeyboard()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->submitQuery()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->toggleRecognition()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/support/v17/leanback/widget/SearchBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->updateUi(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$1;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$1;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_search_bar:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_search_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarHeight:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarHeight:I

    invoke-direct {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/SearchBar;->setBackgroundColor(I)V

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/SearchBar;->setClipChildren(Z)V

    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    const-string/jumbo v3, "input_method"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_text_speech_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColor:I

    sget v3, Landroid/support/v17/leanback/R$integer;->lb_search_bar_speech_mode_background_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    sget v3, Landroid/support/v17/leanback/R$integer;->lb_search_bar_text_mode_background_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundAlpha:I

    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_hint_speech_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColor:I

    const-string/jumbo v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private hideNativeKeyboard()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private isVoiceMode()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->isFocused()Z

    move-result v0

    return v0
.end method

.method private loadSounds(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v1, v3, [I

    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_failure:I

    aput v3, v1, v2

    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_open:I

    aput v3, v1, v6

    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_no_input:I

    const/4 v4, 0x2

    aput v3, v1, v4

    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_success:I

    const/4 v4, 0x3

    aput v3, v1, v4

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, p1, v0, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private play(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$11;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/SearchBar$11;-><init>(Landroid/support/v17/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private playSearchFailure()V
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_failure:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    return-void
.end method

.method private playSearchOpen()V
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_open:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    return-void
.end method

.method private playSearchSuccess()V
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_success:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    return-void
.end method

.method private setSearchQueryInternal(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onSearchQueryChange(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showNativeKeyboard()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/SearchBar$9;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private submitQuery()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onSearchQuerySubmit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private toggleRecognition()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_0
.end method

.method private updateHint()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_with_title_speech:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_with_title:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_speech:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateUi(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->updateHint()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->loadSounds(Landroid/content/Context;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_items:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_text_editor:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SearchEditText;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_badge:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$2;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$2;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/SearchBar$3;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$4;

    invoke-direct {v3, p0, v1}, Landroid/support/v17/leanback/widget/SearchBar$4;-><init>(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$5;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$5;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnKeyboardDismissListener(Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$6;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$6;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v3, "EscapeNorth=1;VoiceDismiss=1;"

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_speech_orb:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SpeechOrbView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$7;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$7;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$8;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$8;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hasFocus()Z

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->updateUi(Z)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->updateHint()V

    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setNextFocusDownId(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchEditText;->setNextFocusDownId(I)V

    return-void
.end method

.method public startRecognition()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-interface {v3}, Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;->recognizeSpeech()V

    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    return-void

    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-interface {v3}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;->requestAudioPermission()V

    return-void

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "android.permission.RECORD_AUDIO required for search"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v4, v6, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    if-eq v2, v5, :cond_6

    sget-object v3, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Could not get audio focus"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v4, "free_form"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v4, Landroid/support/v17/leanback/widget/SearchBar$10;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/SearchBar$10;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v3, v4}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v3, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method public stopRecognition()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showNotListening()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method
