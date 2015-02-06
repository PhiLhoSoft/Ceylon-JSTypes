// Type definitions for the canvas element (HTMLCanvasElement) and related objects

// https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement
shared dynamic HTMLCanvasElement satisfies HTMLElement
{
	shared formal variable Integer width;
	shared formal variable Integer height;
	shared formal String toDataURL(String type = "image/png", Float jpegCompressionRatio = 1.0);
//	shared formal Blob toBlob();
	shared formal CanvasRenderingContext2D | WebGLRenderingContext getContext(String contextId); // "2d" or "webgl"
}

shared dynamic WebGLRenderingContext
{
	// To do
}

// https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D
shared dynamic CanvasRenderingContext2D
{
	shared formal HTMLCanvasElement canvas;
	shared formal variable Anything fillStyle; // Default #000 (black)
	shared formal variable Anything strokeStyle; // Default #000 (black)
	shared formal variable String font; // Default 10px sans-serif
	shared formal variable String textAlign; // start (default), end, left, right or center
	shared formal variable String textBaseline; // top, hanging, middle, alphabetic (default), ideographic, bottom
	shared formal variable String direction; // ltr, rtl, inherit (default)
	shared formal variable Float lineWidth; // Default 1.0
	shared formal variable String lineCap; // butt (default), round, square
	shared formal variable String lineJoin; // round, bevel, miter (default)
	shared formal variable Float miterLimit; // Default 10
	shared formal variable Float shadowBlur; // Default 0
	shared formal variable String shadowColor; // Default fully-transparent black
	shared formal variable Float shadowOffsetX; // Default 0
	shared formal variable Float shadowOffsetY; // Default 0
	shared formal variable Float globalAlpha; // Default 1.0 (opaque)
	shared formal variable String globalCompositeOperation;

	shared formal void restore();
	shared formal void setTransform(Float m11, Float m12, Float m21, Float m22, Float dx, Float dy);
	shared formal void save();
	shared formal void arc(Float x, Float y, Float radius, Float startAngle, Float endAngle, Boolean? anticlockwise);
	shared formal TextMetrics measureText(String text);
	shared formal Boolean isPointInPath(Float x, Float y);
	shared formal void quadraticCurveTo(Float cpx, Float cpy, Float x, Float y);
	shared formal void putImageData(ImageData imagedata, Float dx, Float dy,
			Float? dirtyX, Float? dirtyY, Float? dirtyWidth, Float? dirtyHeight);
	shared formal void rotate(Float angle);
	shared formal void fillText(String text, Float x, Float y, Float? maxWidth);
	shared formal void translate(Float x, Float y);
	shared formal void scale(Float x, Float y);
	shared formal CanvasGradient createRadialGradient(Float x0, Float y0, Float r0, Float x1, Float y1, Float r1);
	shared formal void lineTo(Float x, Float y);
	shared formal void fill();
	shared formal CanvasPattern createPattern(HTMLElement image, String repetition);
	shared formal void closePath();
	shared formal void rect(Float x, Float y, Float w, Float h);
	shared formal void clip();
	shared formal ImageData createImageData(Anything imageDataOrSw, Float? sh);
	shared formal void clearRect(Float x, Float y, Float w, Float h);
	shared formal void moveTo(Float x, Float y);
	shared formal ImageData getImageData(Float sx, Float sy, Float sw, Float sh);
	shared formal void fillRect(Float x, Float y, Float w, Float h);
	shared formal void bezierCurveTo(Float cp1x, Float cp1y, Float cp2x, Float cp2y, Float x, Float y);
	shared formal void drawImage(HTMLElement image, Float offsetX, Float offsetY,
			Float? width, Float? height, Float? canvasOffsetX, Float? canvasOffsetY, Float? canvasImageWidth, Float? canvasImageHeight);
	shared formal void transform(Float m11, Float m12, Float m21, Float m22, Float dx, Float dy);
	shared formal void stroke();
	shared formal void strokeRect(Float x, Float y, Float w, Float h);
	shared formal void strokeText(String text, Float x, Float y, Float? maxWidth);
	shared formal void beginPath();
	shared formal void arcTo(Float x1, Float y1, Float x2, Float y2, Float radius);
	shared formal CanvasGradient createLinearGradient(Float x0, Float y0, Float x1, Float y1);
}

shared dynamic TextMetrics
{
	shared formal Float width;
}
shared dynamic CanvasPattern
{
}

shared dynamic CanvasGradient
{
	shared formal void addColorStop(Float offset, String color);
}

shared dynamic ImageData
{
	shared formal Integer width;
    shared formal Integer height;
	shared formal Byte[] data;
}
