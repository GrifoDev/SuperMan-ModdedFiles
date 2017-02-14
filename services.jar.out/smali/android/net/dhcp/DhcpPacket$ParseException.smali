.class public Landroid/net/dhcp/DhcpPacket$ParseException;
.super Ljava/lang/Exception;
.source "DhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    return-void
.end method
