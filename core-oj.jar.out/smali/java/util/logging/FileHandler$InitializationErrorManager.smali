.class Ljava/util/logging/FileHandler$InitializationErrorManager;
.super Ljava/util/logging/ErrorManager;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/FileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationErrorManager"
.end annotation


# instance fields
.field lastException:Ljava/lang/Exception;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/ErrorManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/FileHandler$InitializationErrorManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/FileHandler$InitializationErrorManager;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 0

    iput-object p2, p0, Ljava/util/logging/FileHandler$InitializationErrorManager;->lastException:Ljava/lang/Exception;

    return-void
.end method
