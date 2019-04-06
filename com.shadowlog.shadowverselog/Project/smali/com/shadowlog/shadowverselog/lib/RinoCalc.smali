.class public Lcom/shadowlog/shadowverselog/lib/RinoCalc;
.super Ljava/lang/Object;
.source "RinoCalc.java"


# instance fields
.field public FCL:I

.field public FIELD:I

.field public FW0:I

.field public FW1:I

.field public FW2:I

.field public FW3:I

.field public MGM:I

.field public MGM0:I

.field public MOF:I

.field public NSG:I

.field public PP:I

.field public RINO:I

.field public ROF:I

.field public SP0:I

.field public SP1:I

.field public SP2:I

.field private dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    .line 23
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    .line 26
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    .line 27
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    .line 28
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW2:I

    .line 29
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW3:I

    .line 30
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP0:I

    .line 31
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP1:I

    .line 32
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP2:I

    .line 35
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    .line 36
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->NSG:I

    .line 37
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MOF:I

    .line 38
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FCL:I

    .line 39
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->ROF:I

    .line 40
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    .line 41
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "rn"

    const-string v2, "\u30ea\u30ce\u30bb\u30a6\u30b9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "f0"

    const-string v2, "(0)\u30d5\u30a9\u30ed\u30ef\u30fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "f1"

    const-string v2, "(1)\u30d5\u30a9\u30ed\u30ef\u30fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "f2"

    const-string v2, "(2)\u30d5\u30a9\u30ed\u30ef\u30fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "f3"

    const-string v2, "(3)\u30d5\u30a9\u30ed\u30ef\u30fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "s0"

    const-string v2, "(0)\u30b9\u30da\u30eb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "s1"

    const-string v2, "(1)\u30b9\u30da\u30eb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "s2"

    const-string v2, "(2)\u30b9\u30da\u30eb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "NSG"

    const-string v2, "\u81ea\u7136\u306e\u5c0e\u304d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "MOF"

    const-string v2, "\u5996\u7cbe\u306e\u3044\u305f\u305a\u3089"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "FCL"

    const-string v2, "\u30d5\u30a7\u30a2\u30ea\u30fc\u30b5\u30fc\u30af\u30eb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "ROF"

    const-string v2, "\u68ee\u8352\u3089\u3057"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "MGM"

    const-string v2, "\u30df\u30cb\u30b4\u30d6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "MGM0"

    const-string v2, "(0)\u30df\u30cb\u30b4\u30d6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    const-string v1, "->"

    const-string v2, " \u2192 "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public clac()Landroid/util/Pair;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v16, Landroid/util/Pair;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .local v16, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v15, "resjList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .local v8, "mg":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    if-gt v8, v0, :cond_15

    .line 85
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v18, "tmp1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v21, "rino"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    const/16 v20, 0x3

    :goto_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v20, "nsg"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->NSG:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v20, "mof"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MOF:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v12, 0x0

    .local v12, "r":I
    :goto_2
    const-string v20, "rino"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_14

    .line 91
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_3
    const-string v20, "nsg"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_13

    .line 92
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_4
    const-string v20, "mof"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    if-ge v6, v0, :cond_12

    .line 94
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v19, "tmp2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v20, "fw0"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v20, "fw1"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v20, "fw2"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW2:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v20, "fw3"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW3:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v20, "sp0"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP0:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v20, "sp1"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP1:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v20, "sp2"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP2:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v20, "FCL"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FCL:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v20, "ROF"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->ROF:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v20, "MGM"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v20, "MGM0"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v13, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;-><init>(II)V

    .line 115
    .local v13, "rObj":Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;
    const/4 v9, 0x0

    .line 116
    .local v9, "mgcount":I
    :cond_0
    :goto_5
    if-le v8, v9, :cond_3

    .line 117
    const-string v20, "MGM0"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_2

    .line 118
    const-string v20, "MGM0"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 119
    add-int/lit8 v9, v9, 0x1

    .line 120
    const-string v21, "MGM0"

    const-string v20, "MGM0"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 86
    .end local v6    # "m":I
    .end local v9    # "mgcount":I
    .end local v10    # "n":I
    .end local v12    # "r":I
    .end local v13    # "rObj":Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;
    .end local v19    # "tmp2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    move/from16 v20, v0

    add-int v20, v20, v8

    goto/16 :goto_1

    .line 121
    .restart local v6    # "m":I
    .restart local v9    # "mgcount":I
    .restart local v10    # "n":I
    .restart local v12    # "r":I
    .restart local v13    # "rObj":Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;
    .restart local v19    # "tmp2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    const-string v20, "MGM"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_0

    .line 122
    const-string v20, "MGM"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 123
    add-int/lit8 v9, v9, 0x1

    .line 124
    const-string v21, "MGM"

    const-string v20, "MGM"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 129
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    if-ge v5, v0, :cond_4

    .line 130
    const-string v20, "rn"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 134
    :cond_4
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v10, :cond_5

    .line 135
    const-string v20, "NSG"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 139
    :cond_5
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v6, :cond_6

    .line 140
    const-string v20, "MOF"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 144
    :cond_6
    :goto_9
    const-string v20, "fw0"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_7

    .line 145
    const-string v20, "f0"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 146
    const-string v21, "fw0"

    const-string v20, "fw0"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 150
    :cond_7
    :goto_a
    const-string v20, "sp0"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_8

    .line 151
    const-string v20, "s0"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 152
    const-string v21, "sp0"

    const-string v20, "sp0"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 156
    :cond_8
    :goto_b
    const-string v20, "FCL"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_9

    .line 157
    const-string v20, "FCL"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 158
    const-string v21, "FCL"

    const-string v20, "FCL"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v21, "fw1"

    const-string v20, "fw1"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 163
    :cond_9
    :goto_c
    const-string v20, "sp1"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_a

    .line 164
    const-string v20, "s1"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 165
    const-string v21, "sp1"

    const-string v20, "sp1"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 169
    :cond_a
    :goto_d
    const-string v20, "fw1"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_b

    .line 170
    const-string v20, "f1"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 171
    const-string v21, "fw1"

    const-string v20, "fw1"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 175
    :cond_b
    :goto_e
    const-string v20, "ROF"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_c

    .line 176
    const-string v20, "ROF"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 177
    const-string v21, "ROF"

    const-string v20, "ROF"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v21, "fw1"

    const-string v20, "fw1"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 182
    :cond_c
    :goto_f
    const-string v20, "fw1"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_d

    .line 183
    const-string v20, "f1"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 184
    const-string v21, "fw1"

    const-string v20, "fw1"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 188
    :cond_d
    :goto_10
    const-string v20, "sp2"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_e

    .line 189
    const-string v20, "s2"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 190
    const-string v21, "sp2"

    const-string v20, "sp2"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 194
    :cond_e
    :goto_11
    const-string v20, "fw2"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_f

    .line 195
    const-string v20, "f2"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 196
    const-string v21, "fw2"

    const-string v20, "fw2"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 200
    :cond_f
    :goto_12
    const-string v20, "fw3"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_10

    .line 201
    const-string v20, "f3"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->inFunc(Ljava/lang/String;)Z

    .line 202
    const-string v21, "fw3"

    const-string v20, "fw3"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 206
    :cond_10
    invoke-virtual {v13}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->Damage()Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 207
    .local v3, "dmg":I
    if-lez v3, :cond_11

    .line 208
    new-instance v20, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual {v13}, Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;->ProcessFlow()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_11
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 91
    .end local v3    # "dmg":I
    .end local v5    # "i":I
    .end local v9    # "mgcount":I
    .end local v13    # "rObj":Lcom/shadowlog/shadowverselog/lib/RinoCalcObject;
    .end local v19    # "tmp2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 90
    .end local v6    # "m":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 216
    .end local v10    # "n":I
    :cond_14
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 83
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 223
    .end local v12    # "r":I
    .end local v18    # "tmp1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_15
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_17

    .line 224
    const/4 v7, 0x0

    .line 225
    .local v7, "max_damage":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_16
    :goto_13
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 226
    .local v11, "pr":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v7, :cond_16

    .line 227
    move-object/from16 v16, v11

    .line 228
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_13

    .line 232
    .end local v7    # "max_damage":I
    .end local v11    # "pr":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_17
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 235
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_19

    .line 236
    move-object/from16 v0, v16

    iget-object v14, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 237
    .local v14, "replaceString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->dictionary:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_14
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 238
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 239
    goto :goto_14

    .line 240
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_18
    new-instance v17, Landroid/util/Pair;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v16    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v17, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .line 243
    .end local v14    # "replaceString":Ljava/lang/String;
    .end local v17    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v16    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_19
    return-object v16
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    .line 252
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    .line 253
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    .line 254
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    .line 255
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW2:I

    .line 256
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW3:I

    .line 257
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP0:I

    .line 258
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP1:I

    .line 259
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP2:I

    .line 260
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    .line 261
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->NSG:I

    .line 262
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MOF:I

    .line 263
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FCL:I

    .line 264
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->ROF:I

    .line 265
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    .line 266
    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    .line 267
    return-void
.end method

.method public setFromLayout(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 277
    const v0, 0x7f070132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    .line 285
    :goto_0
    const v0, 0x7f070129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 291
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    .line 294
    :goto_1
    const v0, 0x7f070131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 301
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    .line 304
    :goto_2
    const v0, 0x7f070130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 309
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->NSG:I

    .line 312
    :goto_3
    const v0, 0x7f070128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    .line 317
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FCL:I

    .line 320
    :goto_4
    const v0, 0x7f07012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_5

    .line 325
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MOF:I

    .line 328
    :goto_5
    const v0, 0x7f070133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_6

    .line 333
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->ROF:I

    .line 336
    :goto_6
    const v0, 0x7f07012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_7

    .line 341
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    .line 344
    :goto_7
    const v0, 0x7f07012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_8

    .line 349
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    .line 352
    :goto_8
    const v0, 0x7f07012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_9

    .line 358
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    .line 361
    :goto_9
    const v0, 0x7f07012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_a

    .line 367
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    .line 370
    :goto_a
    const v0, 0x7f07012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_b

    .line 375
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW2:I

    .line 378
    :goto_b
    const v0, 0x7f070134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 383
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP0:I

    .line 386
    :goto_c
    const v0, 0x7f070135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_d

    .line 391
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP1:I

    .line 394
    :goto_d
    const v0, 0x7f070136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 399
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP2:I

    .line 412
    :goto_e
    return-void

    .line 278
    :pswitch_0
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    goto/16 :goto_0

    .line 279
    :pswitch_1
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    goto/16 :goto_0

    .line 280
    :pswitch_2
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    goto/16 :goto_0

    .line 281
    :pswitch_3
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->RINO:I

    goto/16 :goto_0

    .line 286
    :pswitch_4
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    goto/16 :goto_1

    .line 287
    :pswitch_5
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    goto/16 :goto_1

    .line 288
    :pswitch_6
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    goto/16 :goto_1

    .line 289
    :pswitch_7
    iput v5, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    goto/16 :goto_1

    .line 290
    :pswitch_8
    const/4 v0, 0x5

    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FIELD:I

    goto/16 :goto_1

    .line 295
    :pswitch_9
    const/4 v0, 0x5

    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    goto/16 :goto_2

    .line 296
    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    goto/16 :goto_2

    .line 297
    :pswitch_b
    const/4 v0, 0x7

    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    goto/16 :goto_2

    .line 298
    :pswitch_c
    const/16 v0, 0x8

    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    goto/16 :goto_2

    .line 299
    :pswitch_d
    const/16 v0, 0x9

    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    goto/16 :goto_2

    .line 300
    :pswitch_e
    const/16 v0, 0xa

    iput v0, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->PP:I

    goto/16 :goto_2

    .line 305
    :pswitch_f
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->NSG:I

    goto/16 :goto_3

    .line 306
    :pswitch_10
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->NSG:I

    goto/16 :goto_3

    .line 307
    :pswitch_11
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->NSG:I

    goto/16 :goto_3

    .line 308
    :pswitch_12
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->NSG:I

    goto/16 :goto_3

    .line 313
    :pswitch_13
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FCL:I

    goto/16 :goto_4

    .line 314
    :pswitch_14
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FCL:I

    goto/16 :goto_4

    .line 315
    :pswitch_15
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FCL:I

    goto/16 :goto_4

    .line 316
    :pswitch_16
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FCL:I

    goto/16 :goto_4

    .line 321
    :pswitch_17
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MOF:I

    goto/16 :goto_5

    .line 322
    :pswitch_18
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MOF:I

    goto/16 :goto_5

    .line 323
    :pswitch_19
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MOF:I

    goto/16 :goto_5

    .line 324
    :pswitch_1a
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MOF:I

    goto/16 :goto_5

    .line 329
    :pswitch_1b
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->ROF:I

    goto/16 :goto_6

    .line 330
    :pswitch_1c
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->ROF:I

    goto/16 :goto_6

    .line 331
    :pswitch_1d
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->ROF:I

    goto/16 :goto_6

    .line 332
    :pswitch_1e
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->ROF:I

    goto/16 :goto_6

    .line 337
    :pswitch_1f
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    goto/16 :goto_7

    .line 338
    :pswitch_20
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    goto/16 :goto_7

    .line 339
    :pswitch_21
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    goto/16 :goto_7

    .line 340
    :pswitch_22
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM:I

    goto/16 :goto_7

    .line 345
    :pswitch_23
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    goto/16 :goto_8

    .line 346
    :pswitch_24
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    goto/16 :goto_8

    .line 347
    :pswitch_25
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    goto/16 :goto_8

    .line 348
    :pswitch_26
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->MGM0:I

    goto/16 :goto_8

    .line 353
    :pswitch_27
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    goto/16 :goto_9

    .line 354
    :pswitch_28
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    goto/16 :goto_9

    .line 355
    :pswitch_29
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    goto/16 :goto_9

    .line 356
    :pswitch_2a
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    goto/16 :goto_9

    .line 357
    :pswitch_2b
    iput v5, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW0:I

    goto/16 :goto_9

    .line 362
    :pswitch_2c
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    goto/16 :goto_a

    .line 363
    :pswitch_2d
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    goto/16 :goto_a

    .line 364
    :pswitch_2e
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    goto/16 :goto_a

    .line 365
    :pswitch_2f
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    goto/16 :goto_a

    .line 366
    :pswitch_30
    iput v5, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW1:I

    goto/16 :goto_a

    .line 371
    :pswitch_31
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW2:I

    goto/16 :goto_b

    .line 372
    :pswitch_32
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW2:I

    goto/16 :goto_b

    .line 373
    :pswitch_33
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW2:I

    goto/16 :goto_b

    .line 374
    :pswitch_34
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->FW2:I

    goto/16 :goto_b

    .line 379
    :pswitch_35
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP0:I

    goto/16 :goto_c

    .line 380
    :pswitch_36
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP0:I

    goto/16 :goto_c

    .line 381
    :pswitch_37
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP0:I

    goto/16 :goto_c

    .line 382
    :pswitch_38
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP0:I

    goto/16 :goto_c

    .line 387
    :pswitch_39
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP1:I

    goto/16 :goto_d

    .line 388
    :pswitch_3a
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP1:I

    goto/16 :goto_d

    .line 389
    :pswitch_3b
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP1:I

    goto/16 :goto_d

    .line 390
    :pswitch_3c
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP1:I

    goto/16 :goto_d

    .line 395
    :pswitch_3d
    iput v1, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP2:I

    goto/16 :goto_e

    .line 396
    :pswitch_3e
    iput v2, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP2:I

    goto/16 :goto_e

    .line 397
    :pswitch_3f
    iput v3, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP2:I

    goto/16 :goto_e

    .line 398
    :pswitch_40
    iput v4, p0, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->SP2:I

    goto/16 :goto_e

    .line 277
    :pswitch_data_0
    .packed-switch 0x7f07014d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 285
    :pswitch_data_1
    .packed-switch 0x7f070115
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 294
    :pswitch_data_2
    .packed-switch 0x7f070147
        :pswitch_e
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 304
    :pswitch_data_3
    .packed-switch 0x7f070143
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 312
    :pswitch_data_4
    .packed-switch 0x7f070111
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 320
    :pswitch_data_5
    .packed-switch 0x7f07013f
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 328
    :pswitch_data_6
    .packed-switch 0x7f070151
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 336
    :pswitch_data_7
    .packed-switch 0x7f07013b
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 344
    :pswitch_data_8
    .packed-switch 0x7f070137
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch

    .line 352
    :pswitch_data_9
    .packed-switch 0x7f07011a
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    .line 361
    :pswitch_data_a
    .packed-switch 0x7f07011f
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
    .end packed-switch

    .line 370
    :pswitch_data_b
    .packed-switch 0x7f070124
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch

    .line 378
    :pswitch_data_c
    .packed-switch 0x7f070155
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
    .end packed-switch

    .line 386
    :pswitch_data_d
    .packed-switch 0x7f070159
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
    .end packed-switch

    .line 394
    :pswitch_data_e
    .packed-switch 0x7f07015d
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
    .end packed-switch
.end method
