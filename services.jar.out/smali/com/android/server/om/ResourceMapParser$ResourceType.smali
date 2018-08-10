.class final enum Lcom/android/server/om/ResourceMapParser$ResourceType;
.super Ljava/lang/Enum;
.source "ResourceMapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/ResourceMapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/om/ResourceMapParser$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/om/ResourceMapParser$ResourceType;

.field public static final enum COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

.field public static final enum DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/om/ResourceMapParser$ResourceType;

    const-string/jumbo v1, "DRAWABLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/om/ResourceMapParser$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/om/ResourceMapParser$ResourceType;->DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;

    new-instance v0, Lcom/android/server/om/ResourceMapParser$ResourceType;

    const-string/jumbo v1, "COLOR"

    invoke-direct {v0, v1, v3}, Lcom/android/server/om/ResourceMapParser$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/om/ResourceMapParser$ResourceType;->COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/om/ResourceMapParser$ResourceType;

    sget-object v1, Lcom/android/server/om/ResourceMapParser$ResourceType;->DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/om/ResourceMapParser$ResourceType;->COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/om/ResourceMapParser$ResourceType;->$VALUES:[Lcom/android/server/om/ResourceMapParser$ResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/om/ResourceMapParser$ResourceType;
    .locals 1

    const-class v0, Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/ResourceMapParser$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/om/ResourceMapParser$ResourceType;
    .locals 1

    sget-object v0, Lcom/android/server/om/ResourceMapParser$ResourceType;->$VALUES:[Lcom/android/server/om/ResourceMapParser$ResourceType;

    return-object v0
.end method
