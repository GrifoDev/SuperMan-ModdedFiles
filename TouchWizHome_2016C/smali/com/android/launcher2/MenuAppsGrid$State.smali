.class abstract enum Lcom/android/launcher2/MenuAppsGrid$State;
.super Ljava/lang/Enum;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuAppsGrid$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$1;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$2;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/MenuAppsGrid$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$3;

    const-string v1, "AtoZ"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/MenuAppsGrid$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$4;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/MenuAppsGrid$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$5;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/MenuAppsGrid$State$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->$VALUES:[Lcom/android/launcher2/MenuAppsGrid$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    const-class v0, Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->$VALUES:[Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0}, [Lcom/android/launcher2/MenuAppsGrid$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method


# virtual methods
.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
.end method
