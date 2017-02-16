.class public Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;
.super Ljava/lang/Object;
.source "SharedPreferencesUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/android/common/util/SharedPreferencesUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mode:I

.field private name:Ljava/lang/String;

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    .prologue
    .line 36
    iget v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->mode:I

    return v0
.end method

.method private initDefaultValue(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    .prologue
    .line 68
    iget-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "#xFF00"

    iput-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method public create()Lcom/yulore/android/common/util/SharedPreferencesUtility;
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p0}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->initDefaultValue(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)V

    .line 63
    new-instance v0, Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility;-><init>(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;Lcom/yulore/android/common/util/SharedPreferencesUtility$1;)V

    return-object v0
.end method

.method public mode(I)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->mode:I

    .line 52
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public separator(Ljava/lang/String;)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;

    .line 56
    return-object p0
.end method
