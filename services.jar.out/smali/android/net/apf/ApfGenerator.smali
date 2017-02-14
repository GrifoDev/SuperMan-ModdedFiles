.class public Landroid/net/apf/ApfGenerator;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfGenerator$ExtendedOpcodes;,
        Landroid/net/apf/ApfGenerator$IllegalInstructionException;,
        Landroid/net/apf/ApfGenerator$Instruction;,
        Landroid/net/apf/ApfGenerator$Opcodes;,
        Landroid/net/apf/ApfGenerator$Register;
    }
.end annotation


# static fields
.field public static final DROP_LABEL:Ljava/lang/String; = "__DROP__"

.field public static final FILTER_AGE_MEMORY_SLOT:I = 0xf

.field public static final FIRST_PREFILLED_MEMORY_SLOT:I = 0xd

.field public static final IPV4_HEADER_SIZE_MEMORY_SLOT:I = 0xd

.field public static final LAST_PREFILLED_MEMORY_SLOT:I = 0xf

.field public static final MEMORY_SLOTS:I = 0x10

.field public static final PACKET_SIZE_MEMORY_SLOT:I = 0xe

.field public static final PASS_LABEL:Ljava/lang/String; = "__PASS__"


# instance fields
.field private final mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

.field private mGenerated:Z

.field private final mInstructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/apf/ApfGenerator$Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/apf/ApfGenerator$Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;


# direct methods
.method static synthetic -get0(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;
    .locals 1

    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;
    .locals 1

    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    return-void
.end method

.method private addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V
    .locals 2

    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Program already generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateInstructionOffsets()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    iput v2, v0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    invoke-virtual {v0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public addAdd(I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addAddR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addAnd(I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addAndR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addDiv(I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addDivR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JMP:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    const-string/jumbo v2, "JNEBS fails with R1"

    invoke-direct {v1, v2}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-virtual {v0, p3}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setCompareBytes([B)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0AnyBitsSetR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0EqualsR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0GreaterThanR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0LessThanR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addJumpIfR0NotEqualsR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLeftShift(I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLeftShiftR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDW:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLoad32Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDB:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLoad8Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    if-ltz p2, :cond_0

    const/16 v1, 0xf

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal memory slot number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LI:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addMove(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addMul(I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addMulR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addNeg(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addNot(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addOr(I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addOrR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addRightShift(I)Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addStoreToMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    if-ltz p2, :cond_0

    const/16 v1, 0xf

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal memory slot number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public addSwap()Landroid/net/apf/ApfGenerator;
    .locals 2

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setLabel(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    return-object p0
.end method

.method public generate()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    iget-boolean v7, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Can only generate() once!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    const/16 v3, 0xa

    :goto_0
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator;->updateInstructionOffsets()I

    move-result v6

    iget-object v7, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    add-int/lit8 v8, v6, 0x1

    iput v8, v7, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    iget-object v7, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    iput v6, v7, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_2

    :cond_1
    new-array v0, v6, [B

    iget-object v7, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfGenerator$Instruction;

    invoke-virtual {v1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->generate([B)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    iget-object v7, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfGenerator$Instruction;

    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator$Instruction;->shrink()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public programLengthOverEstimate()I
    .locals 1

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator;->updateInstructionOffsets()I

    move-result v0

    return v0
.end method

.method public setApfVersion(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
