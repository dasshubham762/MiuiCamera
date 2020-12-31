.class public Lcom/arcsoft/avatar/gl/GLRender;
.super Ljava/lang/Object;
.source "GLRender.java"


# static fields
.field private static final a:Ljava/lang/String; = "Arc_GLRender"

.field private static final l:I = 0x4

.field private static final m:Ljava/lang/String; = "attribute vec2 vPos;\nattribute vec2 vTex;\nvarying   vec2 vTextureCoord;\nvoid main(){\ngl_Position=vec4(vPos,0.0,1.0);\nvTextureCoord = vTex;\n}\n"

.field private static final n:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 2
    iput-object p3, p0, Lcom/arcsoft/avatar/gl/GLRender;->f:[I

    mul-int p3, p2, p2

    if-lez p3, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 3
    iput p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->g:I

    .line 4
    iput p2, p0, Lcom/arcsoft/avatar/gl/GLRender;->h:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->k:Z

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "GLRender() frameWidth="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,frameHeight="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " invalid."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public initRender(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->f:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    const/16 v3, 0x20

    .line 3
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 7
    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget-object v1, p0, Lcom/arcsoft/avatar/gl/GLRender;->f:[I

    aget v1, v1, v2

    const v5, 0x8892

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v1, 0x88e4

    .line 9
    invoke-static {v5, v3, v4, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 10
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    new-array v3, v0, [F

    .line 11
    fill-array-data v3, :array_1

    new-array v0, v0, [F

    .line 12
    fill-array-data v0, :array_2

    if-eqz p1, :cond_0

    move-object v3, v0

    .line 13
    :cond_0
    array-length p1, v3

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 14
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 17
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    iget-object v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->f:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 19
    array-length v0, v3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v5, v0, p1, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 20
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string p1, "attribute vec2 vPos;\nattribute vec2 vTex;\nvarying   vec2 vTextureCoord;\nvoid main(){\ngl_Position=vec4(vPos,0.0,1.0);\nvTextureCoord = vTex;\n}\n"

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 21
    invoke-static {p1, v0}, Lcom/arcsoft/avatar/gl/ShaderManager;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->b:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "vPos"

    .line 22
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->c:I

    .line 23
    iget p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->b:I

    const-string v0, "vTex"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->d:I

    .line 24
    iget p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->b:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->e:I

    .line 25
    iput-boolean v4, p0, Lcom/arcsoft/avatar/gl/GLRender;->k:Z

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public renderWithTextureId(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v0, 0x4100

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->f:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 5
    iget v3, p0, Lcom/arcsoft/avatar/gl/GLRender;->c:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 6
    iget v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    iget-object v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->f:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 8
    iget v3, p0, Lcom/arcsoft/avatar/gl/GLRender;->d:I

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 9
    iget v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x84c0

    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 11
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 12
    iget p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->e:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x6

    const/4 v3, 0x4

    .line 13
    invoke-static {p1, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 14
    iget p1, p0, Lcom/arcsoft/avatar/gl/GLRender;->c:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 15
    iget p0, p0, Lcom/arcsoft/avatar/gl/GLRender;->d:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 17
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 18
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public unInitRender()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/arcsoft/avatar/gl/GLRender;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x2

    .line 3
    iget-object v2, p0, Lcom/arcsoft/avatar/gl/GLRender;->f:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/arcsoft/avatar/gl/GLRender;->k:Z

    return-void
.end method

.method public updateMirrorAndOrientation()V
    .locals 0

    return-void
.end method
