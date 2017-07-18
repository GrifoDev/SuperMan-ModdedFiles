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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)I
    .locals 1

    iget v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->mode:I

    return v0
.end method

.method private initDefaultValue(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)V
    .locals 1

    iget-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#xFF00"

    iput-object v0, p1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public create()Lcom/yulore/android/common/util/SharedPreferencesUtility;
    .locals 2

    invoke-direct {p0, p0}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->initDefaultValue(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)V

    new-instance v0, Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility;-><init>(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;Lcom/yulore/android/common/util/SharedPreferencesUtility$1;)V

    return-object v0
.end method

.method public mode(I)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;
    .locals 0

    iput p1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->mode:I

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public separator(Ljava/lang/String;)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;

    return-object p0
.end method
