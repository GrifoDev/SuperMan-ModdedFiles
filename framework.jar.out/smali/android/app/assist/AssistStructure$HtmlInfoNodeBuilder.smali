.class final Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;
.super Landroid/view/ViewStructure$HtmlInfo$Builder;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtmlInfoNodeBuilder"
.end annotation


# instance fields
.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewStructure$HtmlInfo$Builder;-><init>()V

    iput-object p1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 2

    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$HtmlInfoNode;-><init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;Landroid/app/assist/AssistStructure$HtmlInfoNode;)V

    return-object v0
.end method

.method public bridge synthetic build()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->build()Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v0

    return-object v0
.end method
