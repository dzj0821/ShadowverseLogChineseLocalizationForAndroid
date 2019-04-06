.class public Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;
.super Ljava/lang/Object;
.source "RinoCalcObject.java"


# instance fields
.field public f0:I

.field public f1:I

.field public f2:I

.field public f3:I

.field public fd:I

.field private flowA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flowB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pp:I

.field public rn:I

.field public s0:I

.field public s1:I

.field public s2:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "p"    # I
    .param p2, "f"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 15
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 16
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->rn:I

    .line 17
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f0:I

    .line 18
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f1:I

    .line 19
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f2:I

    .line 20
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f3:I

    .line 21
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s0:I

    .line 22
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s1:I

    .line 23
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s2:I

    .line 32
    iput p2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 33
    iput p1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowB:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public Damage()Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "damage":I
    const/4 v2, 0x0

    .line 235
    .local v2, "spell_count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v1, "flow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowB:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 240
    .local v3, "str":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 241
    const-string v5, "rn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    add-int/2addr v0, v2

    goto :goto_0

    .line 245
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method public ProcessFlow()Ljava/lang/String;
    .locals 7

    .prologue
    .line 255
    const-string v2, ""

    .line 257
    .local v2, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "flow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowB:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "cnt":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 263
    .local v3, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 265
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 267
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 269
    return-object v2
.end method

.method public inFunc(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public inFunc(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const-string v3, "rn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_0

    .line 49
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->rn:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->rn:I

    .line 50
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 51
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowB:Ljava/util/List;

    const-string v4, "rn"

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    move v1, v2

    .line 223
    :cond_1
    :goto_1
    return v1

    .line 60
    :cond_2
    const-string v3, "f0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 61
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x0

    if-lt v3, v4, :cond_3

    .line 62
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f0:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f0:I

    .line 63
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 64
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 65
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "f0"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_3
    move v1, v2

    .line 68
    goto :goto_1

    .line 73
    :cond_4
    const-string v3, "f1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 74
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_5

    .line 75
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f1:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f1:I

    .line 76
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 77
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 78
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "f1"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_5
    move v1, v2

    .line 81
    goto/16 :goto_1

    .line 86
    :cond_6
    const-string v3, "f2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 87
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    if-lez v3, :cond_7

    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_7

    .line 88
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f2:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f2:I

    .line 89
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 90
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 91
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "f2"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_7
    move v1, v2

    .line 94
    goto/16 :goto_1

    .line 99
    :cond_8
    const-string v3, "f3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 100
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    if-lez v3, :cond_9

    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    if-lt v3, v4, :cond_9

    .line 101
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f3:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f3:I

    .line 102
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 103
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 104
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "f3"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    :cond_9
    move v1, v2

    .line 107
    goto/16 :goto_1

    .line 112
    :cond_a
    const-string v3, "s0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 113
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x0

    if-lt v3, v4, :cond_b

    .line 114
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s0:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s0:I

    .line 115
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 116
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "s0"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    :cond_b
    move v1, v2

    .line 119
    goto/16 :goto_1

    .line 124
    :cond_c
    const-string v3, "s1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 125
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_d

    .line 126
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s1:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s1:I

    .line 127
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 128
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "s1"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v0    # "i":I
    :cond_d
    move v1, v2

    .line 131
    goto/16 :goto_1

    .line 136
    :cond_e
    const-string v3, "s2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 137
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_f

    .line 138
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s2:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s2:I

    .line 139
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 140
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "s2"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_f
    move v1, v2

    .line 143
    goto/16 :goto_1

    .line 148
    :cond_10
    const-string v3, "NSG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 149
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    if-lt v3, v4, :cond_11

    .line 150
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s1:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s1:I

    .line 151
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->rn:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->rn:I

    .line 152
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 153
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowB:Ljava/util/List;

    const-string v4, "NSG"

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowB:Ljava/util/List;

    const-string v4, "rn"

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0    # "i":I
    :cond_11
    move v1, v2

    .line 156
    goto/16 :goto_1

    .line 161
    :cond_12
    const-string v3, "MOF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 162
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    if-lt v3, v4, :cond_13

    .line 163
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s2:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s2:I

    .line 164
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->rn:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->rn:I

    .line 165
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 166
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowB:Ljava/util/List;

    const-string v4, "MOF"

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowB:Ljava/util/List;

    const-string v4, "rn"

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_13
    move v1, v2

    .line 169
    goto/16 :goto_1

    .line 174
    :cond_14
    const-string v3, "FCL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 175
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_15

    .line 176
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s1:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s1:I

    .line 177
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 178
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "FCL"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    :cond_15
    move v1, v2

    .line 181
    goto/16 :goto_1

    .line 186
    :cond_16
    const-string v3, "ROF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 187
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_17

    .line 188
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s2:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->s2:I

    .line 189
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 190
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "ROF"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .end local v0    # "i":I
    :cond_17
    move v1, v2

    .line 193
    goto/16 :goto_1

    .line 198
    :cond_18
    const-string v3, "MGM0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 199
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    if-lez v3, :cond_19

    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x0

    if-lt v3, v4, :cond_19

    .line 200
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f0:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f0:I

    .line 201
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 202
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 203
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "MGM0"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .end local v0    # "i":I
    :cond_19
    move v1, v2

    .line 206
    goto/16 :goto_1

    .line 211
    :cond_1a
    const-string v3, "MGM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 212
    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    if-lez v3, :cond_1b

    iget v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    if-lt v3, v4, :cond_1b

    .line 213
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f3:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->f3:I

    .line 214
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->fd:I

    .line 215
    iget v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->pp:I

    .line 216
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->flowA:Ljava/util/List;

    const-string v3, "MGM"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .end local v0    # "i":I
    :cond_1b
    move v1, v2

    .line 219
    goto/16 :goto_1

    :cond_1c
    move v1, v2

    .line 223
    goto/16 :goto_1
.end method
