.class Ljava/text/DontCareFieldPosition;
.super Ljava/text/FieldPosition;
.source "DontCareFieldPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DontCareFieldPosition$1;
    }
.end annotation


# static fields
.field static final INSTANCE:Ljava/text/FieldPosition;


# instance fields
.field private final noDelegate:Ljava/text/Format$FieldDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/text/DontCareFieldPosition;

    invoke-direct {v0}, Ljava/text/DontCareFieldPosition;-><init>()V

    sput-object v0, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    new-instance v0, Ljava/text/DontCareFieldPosition$1;

    invoke-direct {v0, p0}, Ljava/text/DontCareFieldPosition$1;-><init>(Ljava/text/DontCareFieldPosition;)V

    iput-object v0, p0, Ljava/text/DontCareFieldPosition;->noDelegate:Ljava/text/Format$FieldDelegate;

    return-void
.end method


# virtual methods
.method getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .locals 1

    iget-object v0, p0, Ljava/text/DontCareFieldPosition;->noDelegate:Ljava/text/Format$FieldDelegate;

    return-object v0
.end method
