.class final enum Ljava/io/File$PathStatus;
.super Ljava/lang/Enum;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PathStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/io/File$PathStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/io/File$PathStatus;

.field public static final enum CHECKED:Ljava/io/File$PathStatus;

.field public static final enum INVALID:Ljava/io/File$PathStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File$PathStatus;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v2}, Ljava/io/File$PathStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    new-instance v0, Ljava/io/File$PathStatus;

    const-string/jumbo v1, "CHECKED"

    invoke-direct {v0, v1, v3}, Ljava/io/File$PathStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File$PathStatus;

    sget-object v1, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    aput-object v1, v0, v2

    sget-object v1, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    aput-object v1, v0, v3

    sput-object v0, Ljava/io/File$PathStatus;->$VALUES:[Ljava/io/File$PathStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/io/File$PathStatus;
    .locals 1

    const-class v0, Ljava/io/File$PathStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/io/File$PathStatus;

    return-object v0
.end method

.method public static values()[Ljava/io/File$PathStatus;
    .locals 1

    sget-object v0, Ljava/io/File$PathStatus;->$VALUES:[Ljava/io/File$PathStatus;

    return-object v0
.end method
