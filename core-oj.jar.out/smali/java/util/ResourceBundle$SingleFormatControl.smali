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

    new-instance v0, Ljava/util/ResourceBundle$SingleFormatControl;

    sget-object v1, Ljava/util/ResourceBundle$SingleFormatControl;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;

    new-instance v0, Ljava/util/ResourceBundle$SingleFormatControl;

    sget-object v1, Ljava/util/ResourceBundle$SingleFormatControl;->FORMAT_CLASS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->CLASS_ONLY:Ljava/util/ResourceBundle$Control;

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

    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    iput-object p1, p0, Ljava/util/ResourceBundle$SingleFormatControl;->formats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/ResourceBundle$SingleFormatControl;->formats:Ljava/util/List;

    return-object v0
.end method
