.class Ljava/util/ResourceBundle$SingleFormatControl;
.super Ljava/util/ResourceBundle$Control;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleFormatControl"
.end annotation


# static fields
.field private static final CLASS_ONLY:Ljava/util/ResourceBundle$Control;

.field private static final PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;


# instance fields
.field private final formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/ResourceBundle$Control;
    .locals 1

    sget-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->CLASS_ONLY:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/ResourceBundle$Control;
    .locals 1

    sget-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2875
    new-instance v0, Ljava/util/ResourceBundle$SingleFormatControl;

    sget-object v1, Ljava/util/ResourceBundle$SingleFormatControl;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    .line 2874
    sput-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;

    .line 2878
    new-instance v0, Ljava/util/ResourceBundle$SingleFormatControl;

    sget-object v1, Ljava/util/ResourceBundle$SingleFormatControl;->FORMAT_CLASS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    .line 2877
    sput-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->CLASS_ONLY:Ljava/util/ResourceBundle$Control;

    .line 2873
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

    .prologue
    .line 2882
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    .line 2883
    iput-object p1, p0, Ljava/util/ResourceBundle$SingleFormatControl;->formats:Ljava/util/List;

    .line 2882
    return-void
.end method


# virtual methods
.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2887
    if-nez p1, :cond_0

    .line 2888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2890
    :cond_0
    iget-object v0, p0, Ljava/util/ResourceBundle$SingleFormatControl;->formats:Ljava/util/List;

    return-object v0
.end method
