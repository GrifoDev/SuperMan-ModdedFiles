.class final enum Lcom/android/launcher2/Workspace$State;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/Workspace$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/Workspace$State;

.field public static final enum EDIT:Lcom/android/launcher2/Workspace$State;

.field public static final enum MOVE_APPS:Lcom/android/launcher2/Workspace$State;

.field public static final enum NORMAL:Lcom/android/launcher2/Workspace$State;

.field public static final enum RESIZE:Lcom/android/launcher2/Workspace$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/Workspace$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    new-instance v0, Lcom/android/launcher2/Workspace$State;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    new-instance v0, Lcom/android/launcher2/Workspace$State;

    const-string v1, "RESIZE"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    new-instance v0, Lcom/android/launcher2/Workspace$State;

    const-string v1, "MOVE_APPS"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher2/Workspace$State;->$VALUES:[Lcom/android/launcher2/Workspace$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/Workspace$State;
    .locals 1

    const-class v0, Lcom/android/launcher2/Workspace$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/Workspace$State;
    .locals 1

    sget-object v0, Lcom/android/launcher2/Workspace$State;->$VALUES:[Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v0}, [Lcom/android/launcher2/Workspace$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method
