/**
 * @file konsole.h
 * @brief <b>Konsolen Output via SWV und PuTTY</b>
 * @author Raphael Baumeler
 * @date 09.04.2026
 * @note Damit diese Funktionen genutzt werden können muss der
 * Serial Wire Viewer (SWV) in den Debugkonfiguration und die SWV
 * Konsole im Debug Modus aktiviert werden. In PuTTY müssen COM-Port,
 * Baudrate und Verbindungstyp korrekt definiert werden.
 * Baudrate = 230400, Verbindungstyp = Serial, COM gemäss Geräte Manager!
 */

#ifndef FUNKTIONEN_KONSOLE_H_
#define FUNKTIONEN_KONSOLE_H_

/**
 * @brief Überschreibt die Funktion printf() womit Strings und Zahlen auf der
 * Konsole via SWV ausgegeben werden können.
 *
 * @param file
 * @param ptr Zeiger auf char array
 * @param len Länge des char arrays
 * @return len Länge des char arrays
 * @note Beispiel: printf("HELLO\n");
 */
int _write(int file, char *ptr, int len);

/**
 * @brief Ausgabe von Strings via SWV auf der Konsole.
 *
 * @param s Zeiger auf char array
 * @note Für Strings diese Funktion anstelle von printf() verwenden, da weniger Stack benötigt wird!
 * Beispiel: _print("HELLO\n");
 */
void _print_SWV(const char *s);

/**
 * @brief Ausgabe von Strings via USART1 auf PuTTY Konsole.
 *
 * @param s Zeiger auf char array
 */
void _print_PuTTY(const char *s);

#endif /* FUNKTIONEN_KONSOLE_H_ */
