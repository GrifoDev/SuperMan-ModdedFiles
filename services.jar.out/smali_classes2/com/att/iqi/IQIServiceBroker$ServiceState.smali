.class final enum Lcom/att/iqi/IQIServiceBroker$ServiceState;
.super Ljava/lang/Enum;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/att/iqi/IQIServiceBroker$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/att/iqi/IQIServiceBroker$ServiceState;

.field public static final enum OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

.field public static final enum ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/att/iqi/IQIServiceBroker$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;->OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;

    const-string/jumbo v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/att/iqi/IQIServiceBroker$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/att/iqi/IQIServiceBroker$ServiceState;

    sget-object v1, Lcom/att/iqi/IQIServiceBroker$ServiceState;->OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;->$VALUES:[Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .locals 1

    const-class v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .locals 1

    sget-object v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;->$VALUES:[Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object v0
.end method
