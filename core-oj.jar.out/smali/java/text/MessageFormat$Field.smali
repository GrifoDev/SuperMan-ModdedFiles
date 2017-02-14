.class public Ljava/text/MessageFormat$Field;
.super Ljava/text/Format$Field;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final ARGUMENT:Ljava/text/MessageFormat$Field;

.field private static final serialVersionUID:J = 0x6da23d2c7b46bfaaL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/MessageFormat$Field;

    const-string/jumbo v1, "message argument field"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/text/MessageFormat$Field;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/MessageFormat$Field;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    return-object v0
.end method
