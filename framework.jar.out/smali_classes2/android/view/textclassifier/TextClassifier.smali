.class public interface abstract Landroid/view/textclassifier/TextClassifier;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifier$1;
    }
.end annotation


# static fields
.field public static final NO_OP:Landroid/view/textclassifier/TextClassifier;

.field public static final TYPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final TYPE_EMAIL:Ljava/lang/String; = "email"

.field public static final TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final TYPE_URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassifier$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method


# virtual methods
.method public abstract classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
.end method

.method public getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;
    .locals 1

    sget-object v0, Landroid/view/textclassifier/LinksInfo;->NO_OP:Landroid/view/textclassifier/LinksInfo;

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
.end method
