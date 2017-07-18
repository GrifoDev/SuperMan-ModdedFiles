.class final Ljava/util/ResourceBundle$NoFallbackControl;
.super Ljava/util/ResourceBundle$SingleFormatControl;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoFallbackControl"
.end annotation


# static fields
.field private static final CLASS_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

.field private static final NO_FALLBACK:Ljava/util/ResourceBundle$Control;

.field private static final PROPERTIES_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;


# direct methods
.method static synthetic -get0()Ljava/util/ResourceBundle$Control;
    .locals 1

    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->CLASS_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/ResourceBundle$Control;
    .locals 1

    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/ResourceBundle$Control;
    .locals 1

    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->PROPERTIES_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->PROPERTIES_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->FORMAT_CLASS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->CLASS_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    return-object v0
.end method
